#!/usr/bin/env bash

APP_NAME=polybar

# Terminate already running bar instances
killall -q $APP_NAME

# Wait until the processes have been shut down
while pgrep -u $UID -x $APP_NAME >/dev/null
do 
	sleep 1
done

# Launch bar1 and bar2
$APP_NAME -c="$HOME/.config/polybar/config.ini" bar0 & disown
$APP_NAME -c="$HOME/.config/polybar/config.ini" bar1 & disown
#$APP_NAME -c="$HOME/.config/polybar/combo.ini" bar2 & disown
#$APP_NAME -c="$HOME/.config/polybar/combo.ini" bar3 & disown
#$APP_NAME -c="$HOME/.config/polybar/combo.ini" bar4 & disown
