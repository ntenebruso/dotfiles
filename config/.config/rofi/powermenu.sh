#!/bin/sh

options="suspend
lock
logout
poweroff
reboot"

selected=$(echo "$options" | rofi -dmenu)

case "$selected" in
	"suspend")
		systemctl suspend
		;;
  "lock")
    loginctl lock-session
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

