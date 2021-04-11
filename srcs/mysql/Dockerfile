FROM alpine:3.11
EXPOSE 3306
RUN apk update
RUN apk add vim openrc mariadb mariadb-client
COPY mariadb-server.cnf /etc/my.cnf.d/
COPY ./phpmyadmin.sql /
COPY start.sh /
CMD ["sh","start.sh"]