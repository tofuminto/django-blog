FROM python:3.10.5-bullseye

ENV LANG=C.UTF-8 \
	TZ=Asia/Tokyo

RUN apt-get update && \
	apt-get install -y

WORKDIR /django-apps

RUN pip install --upgrade pip
RUN pip install Django==4.0.6
RUN pip install Pillow==9.2.0