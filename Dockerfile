FROM python:3.8.6

RUN apt-get update

RUN pip3 install --upgrade pip

COPY ./app/ ./
RUN pip3 install -r requirements.txt

RUN pip3 install gunicorn