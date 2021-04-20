if [ "$(pgrep telegraf)" = "" -o "$(pgrep influxd)" = "" ]; then
        exit 1
else
        exit 0
fi