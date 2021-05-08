#!/usr/bin/env bash

APP_NAME=polybar

# Terminate already running bar instances
killall -q $APP_NAME

# Wait until the processes have been shut down
while pgrep -u $UID -x $APP_NAME >/dev/null
do 
	sleep 1
done

# Launch polybar 
$APP_NAME -c="$HOME/.config/$APP_NAME/config.ini" bar0 & disown
$APP_NAME -c="$HOME/.config/$APP_NAME/config.ini" bar1 & disown
$APP_NAME -c="$HOME/.config/$APP_NAME/config.ini" bar2 & disown
