#!/bin/sh

[ $XDG_SESSION_TYPE == "x11" ] && picom &
xss-lock i3lock &

