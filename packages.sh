#!/bin/bash

endline="\n\n"

# Path variables
pacman_mirrorlist="/etc/pacman.d/mirrorlist"
yay_directory="$HOME/Downloads/yay"

# Actualización inicial
printf "🔃 PACMAN CONFIGURATION$endline"
sudo pacman -Syu

# Configure and Speed Up Pacman
sudo pacman -S reflector
sudo cp $pacman_mirrorlist "$pacman_mirrorlist.bak"
sudo reflector --verbose --latest 10 --protocol https --sort rate --save $pacman_mirrorlist
sudo pacman -Sy
printf "✅ pacman package manager updated and configured$endline"

# Install AUR helper and Flatpak
git clone https://archlinux.org/yay.git ~/Downloads
cd "$yay_downloads"
makepkg -si
cd "$HOME"
sudo pacman -S flatpak
printf "✅ AUR helper and Flatpak successfully installed$endline"
