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
		killall -u $USER
		;;
	"poweroff")
		systemctl poweroff
		;;
	"reboot")
		systemctl reboot
		;;
esac

