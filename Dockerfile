FROM python:2.7.8-slim

RUN apt-get update && apt-get -y install cron libmysqlclient-dev gcc mysql-client

COPY app/ /app/
RUN chmod 0755 /app/app.py
RUN pip install -r /app/requirements.txt

CMD python /app/app.py

