import httpx
import asyncio
import json
import logging
from pathlib import Path
from datetime import datetime
from typing import Dict, Any, List, Optional
from asyncio import Semaphore

from src.scraper.scraper_config import HH_QUERY, HH_INDUSTRY, HH_DELAY, OUTPUT_DIR, MAX_PAGES, MAX_CONCURRENT_REQUESTS

# Настройка логирования
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s [%(levelname)s] %(name)s: %(message)s',
    handlers=[
        logging.FileHandler("parser.log"),
        logging.StreamHandler()
    ]
)
logger = logging.getLogger(__name__)


class HHVacanciesParser:
    """
    Асинхронный парсер вакансий с HH.ru.
    """

    def __init__(self, delay: float = HH_DELAY):
        self.base_url = "https://api.hh.ru/vacancies"
        self.delay = delay
        self.semaphore = Semaphore(MAX_CONCURRENT_REQUESTS)
        self._session: Optional[httpx.AsyncClient] = None

    async def __aenter__(self):
        """
        Инициализация асинхронного HTTP-клиента.
        """
        self._session = httpx.AsyncClient(timeout=10.0)
        return self

    async def __aexit__(self, exc_type, exc_val, exc_tb):
        """
        Закрытие HTTP-сессии.
        """
        if self._session:
            await self._session.aclose()

    async def _fetch_page(self, params: Dict[str, Any]) -> Dict[str, Any]:
        """
        Асинхронное получение одной страницы результатов.
        """
        async with self.semaphore:
            await asyncio.sleep(self.delay)
            response = await self._session.get(self.base_url, params=params)
            response.raise_for_status()

            remaining = int(response.headers.get("X-RateLimit-Remaining", 10))
            if remaining < 5:
                logger.warning(f"Близко к лимиту запросов. Осталось: {remaining}. Пауза...")
                await asyncio.sleep(10)

            return response.json()

    async def parse_vacancies(self, query: str, industry: int = HH_INDUSTRY, max_pages: int = MAX_PAGES) -> List[
        Dict[str, Any]]:
        """
        Асинхронный парсинг всех страниц вакансий.
        """
        logger.info(f"Начинаем парсинг вакансий по запросу: '{query}', отрасль: {industry}")

        first_page = await self._fetch_page({
            "text": query,
            "page": 0,
            "per_page": 100,
            "search_field": "name",
            "industry": industry
        })

        total_pages = min(max_pages, first_page.get("pages", 1))
        logger.info(f"Всего найдено страниц: {first_page.get('pages', 1)}, будет обработано: {total_pages}")

        tasks = []
        for page in range(1, total_pages):
            tasks.append(self._fetch_page({
                "text": query,
                "page": page,
                "per_page": 100,
                "search_field": "name",
                "industry": industry
            }))

        all_vacancies = first_page.get("items", [])

        # Обрабатываем оставшиеся страницы
        for task in asyncio.as_completed(tasks):
            try:
                data = await task
                vacancies = data.get("items", [])
                if vacancies:
                    all_vacancies.extend(vacancies)
                    logger.info(f"Получено {len(vacancies)} вакансий со страницы {data.get('page', '?')}")
                else:
                    logger.info("Вакансий больше нет, останавливаемся.")
            except httpx.HTTPStatusError as e:
                logger.error(f"HTTP ошибка: {e}")
            except Exception as e:
                logger.error(f"Ошибка при получении страницы: {e}")

        logger.info(f"Всего собрано {len(all_vacancies)} вакансий.")
        return all_vacancies

    @staticmethod
    async def save_vacancies(vacancies: List[Dict[str, Any]], base_path: str = OUTPUT_DIR):
        """
        Сохранение вакансий в JSON-файл.
        """
        output_path = Path(base_path)
        output_path.mkdir(parents=True, exist_ok=True)

        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        file_path = output_path / f"vacancies_{timestamp}.json"

        with open(file_path, "w", encoding="utf-8") as f:
            json.dump(vacancies, f, ensure_ascii=False, indent=4)

        logger.info(f"Сохранено {len(vacancies)} вакансий в {file_path}")


async def run_parser():
    """
    Запуск парсера и сохранение результатов.
    """
    async with HHVacanciesParser() as parser:
        vacancies = await parser.parse_vacancies(query=HH_QUERY)
        await parser.save_vacancies(vacancies)
