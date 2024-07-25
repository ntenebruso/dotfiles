#!/usr/bin/env bash

# Check for and intall yay
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

# Install packages from pacman
echo "######################"
echo "Installing packages..."
echo "######################"

packages_list=$(cat "./packages.lst" | grep -o "^[^#]*" | tr "\n" " ")
if [ ! -z "$packages_list" ]; then
  sudo pacman -S --needed $packages_list || { echo "Package installation failed."; exit 1; }
fi

# Install packages from aur
echo "##########################"
echo "Installing AUR packages..."
echo "##########################"

aur_packages_list=$(cat "./packages-aur.lst" | grep -o "^[^#]*" | tr "\n" " ")
if [ ! -z "$aur_packages_list" ]; then
  yay -S --needed $aur_packages_list || { echo "AUR package installation failed."; exit 1; }
fi

# Stow files
base_dir="$(dirname $0)/.."
cd "$base_dir/config"
stow -v -t ~ .
