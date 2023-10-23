#!/bin/bash

endline="\n\n"

# Get additional kernels
sudo pacman -S linux-lts linux-lts-headers
printf "✅ linux-lts kernel installed and configured$endline"

# Setup Firewall
sudo pacman -S ufw
sudo systemctl enable ufw
sudo systemctl start ufw
printf "✅ Firewall installed and configured$endline"

