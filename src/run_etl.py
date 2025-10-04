import json
import logging
from pathlib import Path

import httpx

from src.etl.transformer import transform_all_vacancies
from src.etl.loader import save_to_csv


logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s [%(levelname)s] %(name)s: %(message)s',
    handlers=[
        logging.FileHandler("etl.log"),
        logging.StreamHandler()
    ]
)
logger = logging.getLogger(__name__)


def get_current_currency():
    """Получаем текущий курс валют с ЦБ РФ (один раз за запуск)."""
    try:
        url = "https://www.cbr-xml-daily.ru/daily_json.js"
        with httpx.Client(timeout=10.0) as client:
            response = client.get(url)
            response.raise_for_status()
            return response.json().get("Valute", {})
    except Exception as e:
        logger.error(f"Не удалось загрузить курсы валют: {e}")
        return None

def get_latest_raw_vacancies_file(raw_dir: str = "data/raw") -> Path:
    """Получаем путь к последнему сохраненному JSON-файлу"""
    raw_path = Path(raw_dir)
    json_files = list(raw_path.glob("vacancies_*.json"))
    if not json_files:
        raise FileNotFoundError(f"Файлы вакансий не найдены в директории {raw_path}")
    return max(json_files, key=lambda f: f.stat().st_mtime)

def clean_and_save_vacancies():
    latest_file = get_latest_raw_vacancies_file()
    logger.info(f"Получен последний JSON-файл: {latest_file}")

    with open(latest_file, "r", encoding="utf-8") as f:
        vacancies = json.load(f)

    currency_rates = get_current_currency()

    clean_vacancies = transform_all_vacancies(vacancies, currency_rates)
    save_to_csv(clean_vacancies)
