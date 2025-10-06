from contextlib import asynccontextmanager
from fastapi import FastAPI
from src.db.session import init_db, engine

@asynccontextmanager
async def lifespan(app: FastAPI):
    await init_db()
    print("База данных инициализирована")

    yield

    await engine.dispose()
    print("Завершение работы")