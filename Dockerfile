# setup a centos image with bitcore binary components
FROM ubuntu:latest
MAINTAINER LuckyQ Ma <mq@tuojie.com>
RUN apt-get update
RUN apt-get install libzmq3-dev build-essential -y 
RUN apt-get install git curl tar findutils -y 
RUN apt-get install nodejs npm -y
RUN groupadd bitcore
RUN useradd bitcore -m -s /bin/bash -g bitcore
ENV HOME /home/bitcore
USER bitcore
RUN /bin/bash -l -c "npm install bitcore -g"

