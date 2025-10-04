from unittest.mock import patch, MagicMock

from src.etl.models import Vacancy
from src.etl.transformer import extract_skills_from_text, TECH_SKILLS, normalize_salary, transform_vacancy


def test_extract_skills_from_text():
    """ Тестирование извлечения навыков из текста вакансии """
    text = """
    Требуемый стек: Python, Django, REST API. Опыт с Docker и PostgreSQL обязателен.
    Знание JavaScript приветствуется.
    """
    found_skills = extract_skills_from_text(text, TECH_SKILLS)
    expected = {"Python", "Django", "PostgreSQL", "REST API", "Docker", "JavaScript"}
    assert found_skills == expected

def test_extract_skills_case_insensitive():
    """ Тестирование чувствительности к регистру при извлечении навыков """
    text = "Работа с PYTHON и docker"
    found_skills = extract_skills_from_text(text, TECH_SKILLS)
    assert "Python" in found_skills
    assert "Docker" in found_skills

@patch("src.run_etl.get_current_currency")
def test_normalize_salary_rub(mock_currency):
    """ Тест: заплату в рублях не конвертируем """
    mock_currency.return_value = {}
    salary = {"from": 100000, "to": 200000, "currency": "RUR"}
    result = normalize_salary(salary, currency_rates={})
    assert result == (100000, 200000, "RUR")

@patch("src.run_etl.get_current_currency")
def test_normalize_salary_usd(mock_currency):
    """ Тест: заплату в долларах конвертируем в рубли """
    mock_currency.return_value = {"USD": {"Value": 90.0, "Nominal": 1}}
    salary = {"from": 1000, "to": 2000, "currency": "USD"}
    result = normalize_salary(salary, currency_rates=mock_currency.return_value)
    assert result == (90000, 180000, "RUR")

def test_transform_vacancy_minimal():
    """ Тестирование трансформации вакансии """
    raw_vacancy = {
        "id": "12345",
        "name": "Python Developer",
        "salary": None,
        "experience": {"id": "between1And3", "name": "От 1 года до 3 лет"},
        "key_skills": [{"name": "Python"}, {"name": "FastAPI"}],
        "area": {"name": "Москва"},
        "published_at": "2024-06-01T10:00:00Z",
        "alternate_url": "https://hh.ru/vacancy/12345",
        "description": "Ищем разработчика с опытом в Python и Docker.",
        "snippet": {"requirement": "Знание Python и Docker", "responsibility": ""}
    }

    with patch("src.run_etl.get_current_currency", return_value={}):
        result = transform_vacancy(raw_vacancy, currency_rates={})
        assert isinstance(result, Vacancy)
        assert result.id == "12345"
        assert result.title == "Python Developer"
        assert "Python" in result.skills
        assert "FastAPI" in result.skills
        assert result.area_name == "Москва"
        assert result.experience == "between1And3"
