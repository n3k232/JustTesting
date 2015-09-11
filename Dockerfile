FROM ubuntu:latest
ADD apt.conf /etc/apt/apt.conf
ADD . /code
RUN apt-get -y update && apt-get install mysql-client mysql-server vim -y
RUN /usr/sbin/mysqld & \
    sleep 10s &&\
    #change the IP to your local docker-bridge and change the Password
    echo "GRANT ALL ON *.* TO admin@'172.18.42.1' IDENTIFIED BY 'root' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql

ADD my.cnf /etc/mysql/my.cnf
EXPOSE 3306

CMD ["/usr/bin/mysqld_safe"]
