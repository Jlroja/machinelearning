FROM python:3.8-slim-buster

WORKDIR /app

# Copiar ambos archivos en una sola línea
COPY purchases.json requirements.txt . 

RUN pip install --trusted-host pypi.python.org --no-cache-dir -r requirements.txt

COPY main.py .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
