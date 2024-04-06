#! /usr/bin/env bash

if ! command -v yay &> /dev/null
then
  echo "Yay is not installed. Installing now..."
  pacman -S --needed git base-devel
  git clone https://aur.archlinux.org/yay.git ~/yay
  cd ~/yay
  makepkg -si
else
  echo "Yay is already installed. Skipping installation."
fi

packages_list=$(cat "./packages.lst" | grep -o "^[^#]*" | tr "\n" " ")

sudo pacman -S --needed "$packages_list" || { echo "Package installation failed."; exit 1; }

aur_packages_list=$(cat "./packages-aur.lst" | grep -o "^[^#]*" | tr "\n" " ")

yay -S --needed "$aur_packages_list" || { echo "AUR package installation failed."; exit 1; }

