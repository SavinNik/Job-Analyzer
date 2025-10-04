import asyncio
from src.scraper.hh_scraper import run_parser
from src.run_etl import clean_and_save_vacancies


if __name__ == "__main__":
    asyncio.run(run_parser())
    clean_and_save_vacancies()
