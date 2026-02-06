from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {"message": "Hello from FastAPI deployed to Cloud Run using GitHub Actions!"}
