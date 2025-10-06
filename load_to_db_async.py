import pandas
import asyncio
from pathlib import Path
import logging
import pandas as pd
from datetime import datetime as dt
from src.db.session import AsyncSessionLocal, init_db
from src.db.models import Vacancy

logger = logging.getLogger(__name__)


async def get_latest_processed_file(processed_dir: str = "data/processed") -> Path:
    """Получаем путь к последнему сохраненному CSV-файлу"""
    files = list(Path(processed_dir).glob("vacancies_clean_*.csv"))
    if not files:
        raise FileNotFoundError(f"Файлы вакансий не найдены в директории {processed_dir}")
    return max(files, key=lambda f: f.stat().st_mtime)

def parse_datetime(dt_str):
    """Преобразует строку с датой в datetime с часовым поясом"""
    if pd.isna(dt_str):
        return None
    try:
        return dt.strptime(str(dt_str), '%Y-%m-%d %H:%M:%S%z')
    except (ValueError, TypeError) as e:
        print(f"Ошибка при парсинге даты '{dt_str}': {e}")
        return None

async def load_csv_to_db(csv_path: Path):
    """Загрузка CSV-файла в базу данных"""
    df = pandas.read_csv(csv_path)
    df["skills"] = df["skills"].apply(lambda skills: skills.split(", ") if pd.notna(skills) and skills else [])

    async with AsyncSessionLocal() as session:
        try:
            for _, row in df.iterrows():
                def to_none_if_nan(value):
                    return None if pd.isna(value) else value
                
                vacancy = Vacancy(
                    id=str(row["id"]),
                    title=row["title"],
                    salary_from=to_none_if_nan(row["salary_from"]),
                    salary_to=to_none_if_nan(row["salary_to"]),
                    currency=row["currency"],
                    experience=row["experience"],
                    experience_label=row["experience_label"],
                    skills=row["skills"],
                    area_name=row["area_name"],
                    published_at=parse_datetime(row["published_at"]),
                    url=row["url"]
                )
                await session.merge(vacancy)
            await session.commit()
            logger.info(f"Загружено {len(df)} вакансий в базу данных")
        except Exception as e:
            logger.error(f"Ошибка при загрузке вакансий в базу данных: {e}")
            await session.rollback()

async def main():
    await init_db()
    latest_csv = await get_latest_processed_file()
    await load_csv_to_db(latest_csv)

if __name__ == "__main__":
    asyncio.run(main())