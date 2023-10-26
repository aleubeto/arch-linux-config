#!/bin/bash

source helpers.sh

# Get additional kernels
notification "🔃 UPDATING SYSTEM"
sudo pacman -S linux-lts linux-lts-headers
notification "✅ linux-lts kernel installed and configured"

# Setup Firewall
sudo pacman -S ufw
sudo systemctl enable ufw
sudo systemctl start ufw
notification "✅ Firewall installed and configured"

# Dark Adwaita theme
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
