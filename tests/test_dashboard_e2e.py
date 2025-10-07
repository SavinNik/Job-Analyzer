import pytest
from playwright.async_api import async_playwright

@pytest.mark.asyncio
async def test_dashboard_loads():
    async with async_playwright() as p:
        browser = await p.chromium.launch()
        page = await browser.new_page()
        await page.goto("http://localhost:8501")

        # Проверяем заголовок
        assert await page.inner_text("h1") == "📊 JobTrends Analyzer"

        # Нажимаем "Обновить данные"
        await page.click("text=Обновить данные")
        await page.wait_for_selector("text=Топ востребованных навыков")

        # Проверяем наличие графика
        assert await page.is_visible("text=Средняя зарплата по уровню опыта")

        await browser.close()
