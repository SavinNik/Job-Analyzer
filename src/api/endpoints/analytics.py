from fastapi import Depends, APIRouter, Query
from sqlalchemy.ext.asyncio import AsyncSession
from src.api.deps import get_db
from sqlalchemy import text
from typing import List, Dict, Any

router = APIRouter(
    prefix="/analytics",
    tags=["analytics"]
)

@router.get("/top-skills")
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

@router.get("/avg-salary-by-experience")
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

@router.get("/vacancy-count-trend")
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
