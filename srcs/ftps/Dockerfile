FROM alpine:3.11
EXPOSE 21 2100 2101
RUN apk update
RUN apk add vim openrc vsftpd
COPY ./certificate/vsftpd.pem .
COPY ./vsftpd.conf /etc/vsftpd/vsftpd.conf

RUN apk add telegraf --no-cache --repository http://dl-2.alpinelinux.org/alpine/edge/community
RUN mkdir -p /etc/telegraf/
COPY ./telegraf.conf /etc/telegraf/telegraf.conf
COPY ./healthy.sh /
COPY start.sh /
CMD ["sh","start.sh"]