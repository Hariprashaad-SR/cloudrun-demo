FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install fastapi uvicorn

ENV PORT=8080

EXPOSE 8080

CMD ["sh", "-c", "uvicorn app:app --host 0.0.0.0 --port $PORT"]
