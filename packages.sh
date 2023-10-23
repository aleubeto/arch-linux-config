#!/bin/bash

endline="\n\n"

# Path variables
pacman_mirrorlist="/etc/pacman.d/mirrorlist"
yay_directory="$HOME/Downloads/yay"

# Update keyring
printf "🔃 PACMAN CONFIGURATION$endline"
sudo pacman -S archlinux-keyring
sudo pacman-key --refresh
printf "✅ Keyring updated$endline"
sudo pacman -Syu

# Configure and Speed Up Pacman
sudo pacman -S reflector
sudo cp $pacman_mirrorlist "$pacman_mirrorlist.bak"
sudo reflector --verbose --latest 10 --protocol https --sort rate --save $pacman_mirrorlist
sudo pacman -Sy
printf "✅ pacman package manager updated and configured$endline"

# Install AUR helper and Flatpak
sudo pacman -S git
git clone https://aur.archlinux.org/yay.git $yay_directory
cd "$yay_directory"
makepkg -si
cd "$HOME"
sudo pacman -S flatpak
printf "✅ AUR helper and Flatpak successfully installed$endline"
