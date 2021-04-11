rc-status
touch /run/openrc/softlevel
/etc/init.d/mariadb setup
rc-service mariadb restart
mysql -e "CREATE USER 'mustapha'@'%' IDENTIFIED BY 'mustapha';" 
mysql -e "CREATE DATABASE wordpress;"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'mustapha'@'%';"
mysql -e "FLUSH PRIVILEGES;"
#mysql < /wordpress.sql
mysql -e "CREATE DATABASE phpmyadmin;"
mysql < /phpmyadmin.sql
rc-service mariadb restart
sleep infinity