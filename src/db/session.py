from sqlalchemy.ext.asyncio import create_async_engine, async_sessionmaker
from src.db.models import Base
from sqlalchemy.ext.asyncio import AsyncEngine


DATABASE_URL = "postgresql+asyncpg://postgres:rNmq2TMS@localhost:5432/jobtrends"

engine: AsyncEngine = create_async_engine(DATABASE_URL, echo=True)
AsyncSessionLocal = async_sessionmaker(bind=engine, expire_on_commit=False)

async def init_db():
    async with engine.begin() as conn:
        await conn.run_sync(Base.metadata.create_all)

