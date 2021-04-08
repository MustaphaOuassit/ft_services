mkdir etc/nginx/ssl
chmod 700 etc/nginx/ssl
mv certificate.key etc/nginx/ssl
mv certificate.crt etc/nginx/ssl
rc-status
rc-service nginx restart
sleep infinity