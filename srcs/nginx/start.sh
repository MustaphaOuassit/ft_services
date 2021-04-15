mkdir etc/nginx/ssl
chmod 700 etc/nginx/ssl
mv certificate.key etc/nginx/ssl
mv certificate.crt etc/nginx/ssl
rc-update add sshd
rc-status
rc-service nginx restart
adduser mustapha
echo 'mustapha:root'|chpasswd
/etc/init.d/sshd start
/usr/bin/telegraf &
sleep infinity