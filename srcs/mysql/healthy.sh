if [ "$(pgrep telegraf)" = "" -o "$(pgrep mysql)" = "" ]; then
        exit 1
else
        exit 0
fi