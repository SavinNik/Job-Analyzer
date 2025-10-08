import asyncio
import sys
from src.scraper.hh_scraper import run_parser
from src.run_etl import clean_and_save_vacancies
from load_to_db_async import main_db as load_to_db

async def job():
    print("App started")
    try:
        await run_parser()
        clean_and_save_vacancies()
        await load_to_db()
        print("App completed")
    except Exception as e:
        print(f"App failed: {e}", file=sys.stderr)
        sys.exit(1)

async def main():
    await job()

    while True:
        await asyncio.sleep(24 * 60 * 60)
        await job()


if __name__ == "__main__":
    asyncio.run(main())

