#!/usr/bin/env bash

swayidle -w \
	timeout 300 "hyprctl dispatch dpms off" \
	timeout 315 "hyprlock --immediate" \
	timeout 600 "systemctl suspend" \
	before-sleep "hyprlock --immediate" &

