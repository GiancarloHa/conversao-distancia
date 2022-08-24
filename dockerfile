FROM python:3.9.13
EXPOSE 80
COPY requirements.txt .
RUN python -m pip install -r requirements.txt
WORKDIR /app
COPY . /app
CMD ["gunicorn", "--bind", "0.0.0.0:80", "-c", "app.py", "app:app"]