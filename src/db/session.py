from sqlalchemy.ext.asyncio import create_async_engine, async_sessionmaker
from src.db.models import Base


DATABASE_URL = "postgresql+asyncpg://dev:devpass@localhost:5432/jobtrends"

engine = create_async_engine(DATABASE_URL, echo=True)
async_session = async_sessionmaker(bind=engine, expire_on_commit=False)

async def init_db():
    async with engine.begin() as conn:
        await conn.run_sync(Base.metadata.create_all)

