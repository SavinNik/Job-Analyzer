import httpx
from typing import Dict, Any, List

API_BASE_URL = "http://localhost:8000"

async def fetch_top_skills(limit: int = 20) -> List[Dict[str, Any]]:
    async with httpx.AsyncClient() as client:
        response = await client.get(f"{API_BASE_URL}/analytics/skills/top", params={"limit": limit})
        response.raise_for_status()
        return response.json()

async def fetch_avg_salaries() -> List[Dict[str, Any]]:
    async with httpx.AsyncClient() as client:
        response = await client.get(f"{API_BASE_URL}/analytics/salaries/avg_by_experience")
        response.raise_for_status()
        return response.json()

async def fetch_skills_growth(days: int = 30) -> List[Dict[str, Any]]:
    async with httpx.AsyncClient() as client:
        response = await client.get(f"{API_BASE_URL}/analytics/trends/skills_growth", params={"days": days})
        response.raise_for_status()
        return response.json()

async def fetch_vacancy_count_trend(days: int = 30) -> List[Dict[str, Any]]:
    async with httpx.AsyncClient() as client:
        response = await client.get(f"{API_BASE_URL}/analytics/vacancy_count_trend", params={"days": days})
        response.raise_for_status()
        return response.json()

async def fetch_vacancy_count_by_city() -> List[Dict[str, Any]]:
    async with httpx.AsyncClient() as client:
        response = await client.get(f"{API_BASE_URL}/analytics/vacancies/by_city")
        response.raise_for_status()
        return response.json()