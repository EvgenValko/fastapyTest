# Базовый образ с Python
FROM python:3.9-slim

# Создаём рабочую директорию
WORKDIR /app

# Копируем файл с зависимостями
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем исходники приложения
COPY main.py .

# Указываем порт
EXPOSE 8080

# В среде App Platform переменная PORT автоматически устанавливается,
# поэтому подхватим её, иначе будем использовать 8080 по умолчанию.
ENV PORT=8080

# Запускаем Uvicorn-сервер на 0.0.0.0:PORT
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
