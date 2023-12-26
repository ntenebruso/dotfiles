swayidle -w \
	timeout 300 "hyprctl dispatch dpms off" \
		resume "hyprctl dispatch dpms on" \
	timeout 315 "swaylock -f" \
	timeout 600 "systemctl suspend" \
	before-sleep "swaylock -f" &

