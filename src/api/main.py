from fastapi import FastAPI
from src.api.endpoints import analytics
from src.api.lifespan import lifespan

app = FastAPI(
    title="JobTrends Analyzer API",
    description="Анализ трендов на рынке труда на основе данных с HH.ru",
    version="0.0.1",
    lifespan=lifespan
)

app.include_router(analytics.router)

@app.get("/")
async def root():
    return {"message": "JobTrends Analyzer", "docs": "/docs"}

