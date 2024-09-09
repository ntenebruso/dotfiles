base_dir="$(dirname $0)/.."

# Install packages from aur
echo "##########################"
echo "Installing AUR packages..."
echo "##########################"

aur_packages_list=$(cat "$base_dir/scripts/packages-aur.lst" | grep -o "^[^#]*" | tr "\n" " ")
if [ ! -z "$aur_packages_list" ]; then
  yay -S --needed $aur_packages_list || { echo "AUR package installation failed."; exit 1; }
fi

