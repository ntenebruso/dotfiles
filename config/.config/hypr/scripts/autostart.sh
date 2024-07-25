#!/usr/bin/env bash

swayidle -w \
	timeout 300 "hyprctl dispatch dpms off" \
	timeout 315 "swaylock -f" \
	timeout 600 "systemctl suspend" \
	before-sleep "swaylock -f" &

