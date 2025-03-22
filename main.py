from fastapi import FastAPI

app = FastAPI(
    title="My FastAPI App",
    description="Простое приложение для демонстрации деплоя в DigitalOcean App Platform",
    version="1.0.0"
)

@app.get("/")
def read_root():
    return {"message": "Hello from FastAPI!"}

@app.get("/ping")
def ping():
    return {"ping": "pong"}
