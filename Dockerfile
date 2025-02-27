FROM python:3

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . . 

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
