base_dir="$(dirname $0)/.."

# Install packages from pacman
echo "######################"
echo "Installing packages..."
echo "######################"

packages_list=$(cat "$base_dir/scripts/packages.lst" | grep -o "^[^#]*" | tr "\n" " ")
if [ ! -z "$packages_list" ]; then
  sudo pacman -S --needed $packages_list || { echo "Package installation failed."; exit 1; }
fi

