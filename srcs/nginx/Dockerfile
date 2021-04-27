FROM alpine:3.11
EXPOSE 80 443 22
RUN apk update
RUN apk add nginx openrc openssl openssh
RUN mkdir -p /run/nginx
RUN mkdir -p /run/openrc/
RUN touch /run/openrc/softlevel
COPY ./certificate/certificate.key .
COPY ./certificate/certificate.crt .
COPY ./default.conf /etc/nginx/conf.d/default.conf
RUN apk add telegraf --no-cache --repository http://dl-2.alpinelinux.org/alpine/edge/community
RUN mkdir -p /etc/telegraf/
COPY ./telegraf.conf /etc/telegraf/telegraf.conf
COPY ./healthy.sh /
COPY start.sh /
CMD ["sh", "start.sh"]