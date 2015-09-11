FROM ubuntu:latest
# Add for Proxy-Seetings
# ADD apt.conf /etc/apt/apt.conf
ADD . /code
RUN apt-get -y update && apt-get install mysql-client mysql-server vim -y
ADD ./startup.sh /opt/startup.sh
# Get a Copy of my.cnf with the line "bind-address..." commented
#ADD my.cnf /etc/mysql/my.cnf
EXPOSE 3306

CMD ["/bin/bash", "/opt/startup.sh"]
