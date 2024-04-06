#!/usr/bin/env bash

function get_volume() {
  amixer get Master | grep -Po "[0-9]*(?=%)" | head -1 
}

function send_notification() {
  volume=$(get_volume)
  notify-send "Volume: $volume" -r 555 -h "int:value:$volume" -t 2000
}

case $1 in
  up)
    amixer set Master 2%+ > /dev/null
    send_notification
    ;;
  down)
    amixer set Master 2%- > /dev/null
    send_notification
    ;;
  mute)
    amixer set Master toggle > /dev/null
    ;;
esac

