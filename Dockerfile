FROM ubuntu:18.04

WORKDIR /root

RUN apt update && apt install -y python3-pip

RUN pip3 install -U pip

COPY ./requirements.txt /root/requirements.txt

RUN pip install -r /root/requirements.txt
