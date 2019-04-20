FROM python:3

WORKDIR /app

ENV MONGO_URI=mongodb://djfroko:mongo@localhost:27017/admin

COPY app.py /app/app.py
COPY src/app/src/
COPY requirements_dev.txt /app/requirements_dev.txt
COPY requirements.txt /app/requirements.txt

RUN pip install -r /app/requirements.txt

EXPOSE 8080

CMD ["python", "app.py"]
