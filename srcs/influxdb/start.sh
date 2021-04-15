rc-status
touch /run/openrc/softlevel
rc-service influxdb start
influx user create -n admin -p admin
/usr/bin/telegraf &
sleep infinity 