import logging
from typing import List, Dict, Any, Set, Optional
import re
from dateutil import parser as date_parser
from src.etl.models import Vacancy

logger = logging.getLogger(__name__)


TECH_SKILLS = {
    "Python", "Django", "FastAPI", "Flask", "SQL", "PostgreSQL", "MySQL", "MongoDB",
    "Docker", "Kubernetes", "Git", "Linux", "REST API", "Redis", "Celery",
    "JavaScript", "React", "TypeScript", "Pandas", "NumPy", "Scikit-learn",
    "TensorFlow", "PyTorch", "AWS", "GCP", "Azure", "CI/CD", "pytest", "asyncio",
    "Airflow", "Spark", "Kafka", "RabbitMQ", "Nginx", "Prometheus", "Grafana",
    "Go", "Java", "C++", "C#", "Rust", "Bash", "Shell", "HTML", "CSS", "Vue",
    "Angular", "Node.js", "GraphQL", "OAuth", "JWT", "Selenium", "Playwright"
}


def extract_skills(vacancy: Dict[str, Any]) -> List[str]:
    """Извлекаем навыки из описания вакансии"""
    skills = vacancy.get("key_skills", [])
    return [skill["name"] for skill in skills] if skills else []


def extract_skills_from_text(text: str, skill_set: Set[str]) -> Set[str]:
    """Извлекаем навыки из текста вакансии"""
    if not text:
        return set()
    clean_text = re.sub(r"<[^>]+>", "", text.lower())
    found = set()

    mutable_text = clean_text

    for skill in sorted(skill_set, key=lambda x: -len(x)):
        pattern = r"\b" + re.escape(skill.lower()) + r"\b"
        if re.search(pattern, clean_text):
            found.add(skill)
            mutable_text = re.sub(pattern, "[MASKED]", mutable_text, count=1)
    return found


def convert_salary_to_rub(salary: Optional[int], currency: Optional[str], currency_rates: Optional[Dict[str, Any]]) -> Optional[int]:
    """Конвертирует зарплату в рубли с округлением до целого числа.
    """
    if salary is None or not currency or not currency_rates:
        return None
        
    try:
        currency_info = currency_rates.get(currency)
        if not currency_info:
            logger.warning(f"Не удалось найти информацию о валюте: {currency}")
            return None
            
        value = currency_info.get("Value")
        nominal = currency_info.get("Nominal")
        
        if None in (value, nominal):
            logger.warning(f"Неполные данные о валюте {currency}: Value={value}, Nominal={nominal}")
            return None
            
        if nominal == 0:
            logger.warning(f"Нулевой номинал для валюты {currency}")
            return None
            
        return round(salary * (value / nominal))
        
    except Exception as e:
        logger.error(f"Ошибка при конвертации зарплаты {salary} {currency}: {str(e)}")
        return None


def normalize_salary(salary: Dict[str, Any], currency_rates: Dict) -> tuple:
    """Нормализуем зарплату"""
    if not salary:
        return None, None, "RUR"
    if salary.get("currency") != "RUR":
        if salary.get("currency") == "BYR":
            salary["currency"] = "BYN"
        salary["from"] = convert_salary_to_rub(salary.get("from"), salary.get("currency"), currency_rates)
        salary["to"] = convert_salary_to_rub(salary.get("to"), salary.get("currency"), currency_rates)
        salary["currency"] = "RUR"
    return (
        salary.get("from", None),
        salary.get("to", None),
        salary.get("currency", "RUR")
    )


def parse_experience(experience: Dict[str, Any]) -> tuple:
    """Парсим опыт работы"""
    if not experience:
        return "noExperience", "Нет опыта"
    return experience.get("id"), experience.get("name")


def transform_vacancy(vacancy: Dict[str, Any], currency_rates: Dict) -> Vacancy:
    """Трансформируем вакансию"""
    salary_from, salary_to, currency = normalize_salary(vacancy.get("salary"), currency_rates)
    experience_id, experience_label = parse_experience(vacancy.get("experience"))
    structured_skills = extract_skills(vacancy)
    area = vacancy.get("area")
    area_name = area.get("name") if area and isinstance(area, dict) else "Не указано"

    text_sources = [
        vacancy.get("description", ""),
        vacancy.get("snippet", {}).get("requirement", ""),
        vacancy.get("snippet", {}).get("responsibility", "")
    ]
    found_skills = set()
    for text in text_sources:
        found_skills.update(extract_skills_from_text(text, TECH_SKILLS))

    all_skills = list(set(structured_skills) | found_skills)
    logger.debug(f"Вакансия {vacancy['name']} содержит навыки: {', '.join(all_skills)}")

    return Vacancy(
        id=str(vacancy["id"]),
        title=vacancy["name"],
        salary_from=salary_from,
        salary_to=salary_to,
        currency=currency,
        experience=experience_id,
        experience_label=experience_label,
        skills=sorted(all_skills),
        area_name=area_name,
        published_at=date_parser.isoparse(vacancy["published_at"]),
        url=vacancy["alternate_url"]
    )


def transform_all_vacancies(vacancies: List[Dict[str, Any]], currency_rates: Dict) -> List[Vacancy]:
    """Трансформируем все вакансии"""
    valid_vacancies = []
    for vacancy in vacancies:
        try:
            valid = transform_vacancy(vacancy, currency_rates)
            valid_vacancies.append(valid)
        except Exception as e:
            logger.warning(f"Пропущена вакансия: {vacancy['name']}. Причина: {e}")
    logger.info(f"Трансформировано {len(valid_vacancies)} вакансий")
    return valid_vacancies