# syntax=docker/dockerfile:1
FROM python:3.8.13-slim
RUN apt-get update

COPY requirements.txt requirements.txt
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .