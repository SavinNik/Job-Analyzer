import asyncio
from src.scraper.hh_scraper import run_parser
from src.run_etl import clean_and_save_vacancies
from load_to_db_async import main_db

async def job():
    print("Запуск парсера")
    await run_parser()

    print("Очистка и сохранение вакансий")
    clean_and_save_vacancies()

    print("Загрузка вакансий в базу данных")
    await main_db()

if __name__ == "__main__":
    asyncio.run(job())

