swayidle -w \
	timeout 300 "swaylock -f" \
	timeout 300 "hyprctl dispatch dpms off" \
		resume "hyprctl dispatch dpms on" \
	before-sleep "swaylock -f" &

