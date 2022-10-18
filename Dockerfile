FROM docker.io/library/python:3.11

WORKDIR /usr/src/proyecto

RUN apt-get update && apt-get update -y && apt_get install -y \
pkg-config \
net-tools\
libgl1 \
libsm6 \
libxext6 \
libxrender-dev && \
cd .. && \
pip3 install pip --upgrade

COPY requirements.txt ./

RUN pip3 install --no-cache-dir -r ./requirements.txt
