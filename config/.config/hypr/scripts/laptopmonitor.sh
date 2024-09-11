#!/usr/bin/env bash

monitor_state=$(grep "eDP-1" ~/.config/hypr/monitors.conf | cut -d "=" -f2)

case $1 in
  off)
    hyprctl keyword monitor "eDP-1, disable"
    ;;
  on)
    hyprctl keyword monitor "$monitor_state"
    ;;
esac

