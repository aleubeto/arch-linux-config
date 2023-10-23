#!/bin/bash

source helpers.sh

# Get additional kernels
sudo pacman -S linux-lts linux-lts-headers
notification "✅ linux-lts kernel installed and configured"

# Setup Firewall
sudo pacman -S ufw
sudo systemctl enable ufw
sudo systemctl start ufw
notification "✅ Firewall installed and configured"
