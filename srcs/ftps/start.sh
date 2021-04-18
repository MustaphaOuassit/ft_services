mkdir -p /run/openrc
touch /run/openrc/softlevel
mv vsftpd.pem etc/ssl/private
rc-status
adduser mustapha
echo 'mustapha:root'|chpasswd
/usr/bin/telegraf &
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf &
sleep infinity