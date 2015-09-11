FROM ubuntu:latest
ADD apt.conf /etc/apt/apt.conf
RUN apt-get -y update && apt-get install mysql-client mysql-server vim -y
