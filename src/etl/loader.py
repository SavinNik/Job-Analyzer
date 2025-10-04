import pandas as pd
import logging
from pathlib import Path
from typing import List
from datetime import datetime

from src.etl.models import Vacancy

logger = logging.getLogger(__name__)

def save_to_csv(vacancies: List[Vacancy], output_dir: str = "data/processed"):
    """Сохранение вакансий в CSV-файл."""
    Path(output_dir).mkdir(parents=True, exist_ok=True)
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    df = pd.DataFrame([vacancy.model_dump() for vacancy in vacancies])

    df["skills"] = df["skills"].apply(lambda x: ", ".join(x) if x else "")

    output_path = Path(output_dir) / f"vacancies_clean_{timestamp}.csv"
    df.to_csv(output_path, index=False, encoding="utf-8")

    logger.info(f"Сохранено {len(vacancies)} вакансий в {output_path}")