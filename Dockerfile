FROM ubuntu:18.04

RUN apt update && apt install -y python3-pip

RUN pip3 install -U pip

COPY ./requirements.txt /root/requirements.txt

RUN pip install -r /root/requirements.txt

EXPOSE 8888

WORKDIR /root

CMD jupyter notebook --port=8888 --no-browser --ip=0.0.0.0 --allow-root
