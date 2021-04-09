FROM alpine:3.11
EXPOSE 80 443 22
RUN apk update
RUN apk add nginx openrc vim openssl openssh
RUN mkdir -p /run/nginx
RUN mkdir -p /run/openrc/
RUN touch /run/openrc/softlevel
COPY ./certificate/certificate.key .
COPY ./certificate/certificate.crt .
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY start.sh /
CMD ["sh", "start.sh"]