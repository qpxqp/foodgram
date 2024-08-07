FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install gunicorn==20.1.0 && \
    pip install -r requirements.txt --no-cache-dir

COPY . .

COPY starter.sh sh_ingredients1.sh sh_ingredients2.sh sh_ingredients3.sh \
     sh_ingredients4.sh sh_ingredients5.sh sh_ingredients6.sh .

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "backend.wsgi"]
