FROM python:3.9-alpine
LABEL Author="Tamilarasu Saravanakangeyan"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install --upgrade pip
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

# Security : If user is not mentioned the docker will run with root account
RUN adduser -D Tamilarasu
USER Tamilarasu