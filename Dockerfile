FROM python:3.10-slim

WORKDIR /app

COPY . /app  # ✅ Copy everything from the project root

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
