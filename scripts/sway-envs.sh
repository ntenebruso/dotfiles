#!/usr/bin/env bash

if [[ "$EUID" != 0 ]] ; then
  echo "Please run this script as root."
  exit
fi

base_dir="$(dirname $0)/.."

cp "$base_dir/root-cfg/sway-exec" "/usr/local/bin/sway-exec"
cp "$base_dir/root-cfg/sway.desktop" "/usr/share/wayland-sessions/sway.desktop"

echo "Successfully copied necessary files!"

