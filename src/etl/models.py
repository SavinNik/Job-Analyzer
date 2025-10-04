from pydantic import BaseModel
from typing import Optional, List
from datetime import datetime

class Vacancy(BaseModel):
    id: str
    title: str
    salary_from: Optional[int] = None
    salary_to: Optional[int] = None
    currency: str = "RUR"
    experience: str
    experience_label: str
    skills: List[str]
    area_name: str
    published_at: datetime
    url: str