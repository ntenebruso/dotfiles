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
    loginctl kill-user $USER
		;;
	"poweroff")
		systemctl poweroff
		;;
	"reboot")
		systemctl reboot
		;;
esac

