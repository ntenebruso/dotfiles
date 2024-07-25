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
    swaylock -f; sleep 1; hyprctl dispatch dpms off
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

