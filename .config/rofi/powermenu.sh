#!/bin/sh

options="suspend
logout
poweroff
reboot"

selected=$(echo "$options" | rofi -dmenu)

case "$selected" in
	"suspend")
		systemctl suspend
		;;
	"logout")
		pkill -SIGKILL -u $USER
		;;
	"poweroff")
		systemctl poweroff
		;;
	"reboot")
		systemctl reboot
		;;
esac

