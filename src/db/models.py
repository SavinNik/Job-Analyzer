from sqlalchemy import Column, Integer, String, DateTime, ARRAY
from sqlalchemy.ext.declarative import declarative_base
from datetime import datetime, timezone

Base = declarative_base()

class Vacancy(Base):
    __tablename__ = "vacancies"

    id = Column(String, primary_key=True)
    title = Column(String, nullable=False)
    salary_from = Column(Integer)
    salary_to = Column(Integer)
    currency = Column(String, default="RUR")
    experience = Column(String)
    experience_label = Column(String)
    skills = Column(ARRAY(String))
    area_name = Column(String)
    published_at = Column(DateTime(timezone=True), default=lambda: datetime.now(timezone.utc))
    url = Column(String)