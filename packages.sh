#!/bin/bash

source helpers.sh

# Path variables
pacman_mirrorlist="/etc/pacman.d/mirrorlist"
yay_directory="$HOME/Downloads/yay"
snap_directory="$HOME/Downloads/snap"

# Update keyring
notification "🔃 PACMAN CONFIGURATION"
sudo pacman -S archlinux-keyring
sudo pacman -Syu

# Configure and Speed Up Pacman
sudo pacman -S reflector
sudo cp $pacman_mirrorlist "$pacman_mirrorlist.bak"
sudo reflector --verbose --latest 10 --protocol https --sort rate --save $pacman_mirrorlist
sudo pacman -Sy
notification "✅ pacman package manager updated and configured"

# Install AUR helper
sudo pacman -S base-devel
git clone https://aur.archlinux.org/yay.git $yay_directory
cd "$yay_directory"
makepkg -si
cd "$HOME"
notification "✅ AUR helper successfully installed"

# Install Flatpak
sudo pacman -S flatpak
notification "✅ Flatpak successfully installed"

# Install Snap
sudo pacman -S go go-tools python-docutils
git clone https://aur.archlinux.org/snapd.git $snap_directory
cd "$snap_directory"
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
cd "$HOME"
notification "✅ Snap successfully installed"
