FROM python:3.12-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    cron \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN echo "0 2 * * * cd /app && python3 main.py >> /var/log/main.log 2>&1" | crontab -

CMD ["cron", "-f"]