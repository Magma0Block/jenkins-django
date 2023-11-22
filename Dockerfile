FROM python:3.11

WORKDIR /app

COPY . .

RUN python -m pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["python", "-m", "uvicorn", "django_devops.asgi:application", "--host", "0.0.0.0"]