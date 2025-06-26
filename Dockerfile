FROM python:3.13-slim
WORKDIR /app
COPY requirements.txt .
COPY app.py .
COPY templates templates/
COPY static static/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5001

CMD ["flask", "run", "--host=0.0.0.0"]
