FROM python:3.9-slim

WORKDIR /app

# Copiamos el código antes de instalar
COPY requirements.txt . 
RUN pip install -r requirements.txt

# Ahora sí copiamos todo el código, incluyendo app.py
COPY . .

EXPOSE 5000
CMD ["python", "app.py"]
