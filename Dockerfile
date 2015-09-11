FROM ubuntu:latest
#ADD apt.conf /etc/apt/apt.conf
ADD . /code
RUN apt-get -y update && apt-get install mysql-client mysql-server vim -y
RUN update-rc.d mysql defaults
