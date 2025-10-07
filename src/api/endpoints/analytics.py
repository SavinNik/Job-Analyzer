from fastapi import Depends, APIRouter, Query
from sqlalchemy.ext.asyncio import AsyncSession
from src.api.deps import get_db
from sqlalchemy import text
from typing import List, Dict, Any

router = APIRouter(
    prefix="/analytics",
    tags=["analytics"]
)

@router.get("/skills/top")
async def get_top_skills(
        limit: int = Query(20, ge=1, le=100),
        db: AsyncSession = Depends(get_db)
) -> List[Dict[str, Any]]:
    """ Возвращает топ навыков по частоте упоминания """
    result = await db.execute(
        text("""
        SELECT UNNEST(skills) AS skill, COUNT(*) AS count
        FROM vacancies
        WHERE skills IS NOT NULL AND array_length(skills, 1) > 0
        GROUP BY skill
        ORDER BY count DESC
        LIMIT :limit
        """),
        {"limit": limit}
    )
    rows = result.fetchall()
    return [{"skills": row.skill, "count": row.count} for row in rows]

@router.get("/salaries/avg_by_experience")
async def get_avg_salary_by_experience(
        db: AsyncSession = Depends(get_db)
) -> List[Dict[str, Any]]:
    """ Средняя зарплата по уровню опыта """
    result = await db.execute(
        text("""
        SELECT
            experience_label,
            ROUND(AVG((salary_from + salary_to) / 2)) AS avg_salary
        FROM vacancies
        WHERE salary_from IS NOT NULL
          AND salary_to IS NOT NULL
          AND experience_label IS NOT NULL
        GROUP BY experience_label
        ORDER BY avg_salary DESC
        """)
    )
    rows = result.fetchall()
    return [
        {"experience": row.experience_label, "avg_salary_rub": int(row.avg_salary)}
        for row in rows
    ]

@router.get("/vacancy_count_trend")
async def get_vacancy_count_trend(
        days: int = Query(30, ge=1, le=365),
        db: AsyncSession = Depends(get_db)
) -> List[Dict[str, Any]]:
    """ Динамика количества вакансий за последние N дней """
    result = await db.execute(
        text("""
        SELECT
            DATE(published_at) AS date,
            COUNT(*) AS count
        FROM vacancies
        WHERE published_at >= CURRENT_DATE - :days * INTERVAL '1 day'
        GROUP BY DATE(published_at)
        ORDER BY date
        """),
        {"days": days}
    )
    rows = result.fetchall()
    return [{"date": row.date.isoformat(), "count": row.count} for row in rows]


@router.get("/trends/skills_growth")
async def get_skills_growth(
        days: int = Query(30, ge=1, le=365),
        db: AsyncSession = Depends(get_db)
) -> List[Dict[str, Any]]:
    """ Рост/спад популярности навыков """
    # Сначала получим общее количество вакансий в каждом периоде
    total_result = await db.execute(
        text("""
            SELECT 
                COUNT(*) FILTER (WHERE published_at >= CURRENT_DATE - :days * INTERVAL '1 day') as total_current,
                COUNT(*) FILTER (WHERE published_at >= CURRENT_DATE - :days * 2 * INTERVAL '1 day' 
                                AND published_at < CURRENT_DATE - :days * INTERVAL '1 day') as total_previous
            FROM vacancies
            """),
        {"days": days}
    )
    total_current, total_previous = total_result.fetchone()
    
    # Защита от деления на ноль
    if total_previous == 0:
        total_previous = 1
    if total_current == 0:
        total_current = 1
    
    # Получаем данные по навыкам с учетом доли от общего количества
    result = await db.execute(
        text("""
            WITH current_period AS (
                SELECT UNNEST(skills) AS skill, COUNT(*) as cnt
                FROM vacancies
                WHERE published_at >= CURRENT_DATE - :days * INTERVAL '1 day'
                GROUP BY skill
            ),
            previous_period AS (
                SELECT UNNEST(skills) AS skill, COUNT(*) as cnt
                FROM vacancies
                WHERE published_at >= CURRENT_DATE - :days * 2 * INTERVAL '1 day'
                  AND published_at < CURRENT_DATE - :days * INTERVAL '1 day'
                GROUP BY skill
            )
            SELECT
                COALESCE(c.skill, p.skill) AS skill,
                COALESCE(c.cnt, 0) as current_abs,
                COALESCE(p.cnt, 0) as previous_abs,
                ROUND(COALESCE(c.cnt, 0) * 100.0 / :total_current, 2) as current_pct,
                ROUND(COALESCE(p.cnt, 0) * 100.0 / :total_previous, 2) as previous_pct
            FROM current_period c
            FULL OUTER JOIN previous_period p ON c.skill = p.skill
            ORDER BY current_abs DESC
            LIMIT 50
            """),
        {"days": days, "total_current": total_current, "total_previous": total_previous}
    )
    rows = result.fetchall()

    trends = []
    for row in rows:
        current_pct = row.current_pct
        previous_pct = row.previous_pct
        
        # Рассчитываем разницу в процентных пунктах
        if previous_pct == 0 and current_pct == 0:
            growth_pct = 0.0
        elif previous_pct == 0:
            growth_pct = float('inf')
        else:
            # Рост в процентах от предыдущего значения
            growth_pct = round(((current_pct - previous_pct) / previous_pct) * 100, 1)

        trends.append({
            "skill": row.skill,
            "current": current_pct,
            "previous": previous_pct,
            "growth_pct": growth_pct
        })

    def sort_key(item):
        if item["growth_pct"] == float('inf'):
            return (1, -item["current"])
        elif item["growth_pct"] >= 0:
            return (2, -item["growth_pct"])
        else:
            return (3, item["growth_pct"])

    trends.sort(key=sort_key)
    return trends

@router.get("/vacancies/by_city")
async def get_vacancy_count_by_city(
        db: AsyncSession = Depends(get_db)
) -> List[Dict[str, Any]]:
    """ Количество вакансий в каждом городе """
    result = await db.execute(
        text("""
        SELECT 
            area_name AS city,
            COUNT(*) AS vacancy_count
        FROM vacancies
        WHERE area_name IS NOT NULL
        GROUP BY area_name
        ORDER BY vacancy_count DESC 
        """)
    )
    rows = result.mappings().all()
    return [dict(row) for row in rows]