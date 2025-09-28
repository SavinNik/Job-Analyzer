from dotenv import load_dotenv
import os

load_dotenv()

HH_QUERY = os.getenv("HH_QUERY", "Python разработчик")
HH_INDUSTRY = int(os.getenv("HH_INDUSTRY", 7))
HH_DELAY = float(os.getenv("HH_DELAY", 0.5))
OUTPUT_DIR = os.getenv("OUTPUT_DIR", "data/raw")
MAX_PAGES = int(os.getenv("MAX_PAGES", 20))
MAX_CONCURRENT_REQUESTS = int(os.getenv("MAX_CONCURRENT_REQUESTS", 5))