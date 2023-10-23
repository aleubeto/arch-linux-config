#!/bin/bash

# Path variables
pacman_mirrorlist = "/etc/pacman.d/mirrorlist"

# Actualización inicial
sudo pacman -Syu

# Configure and Speed Up Pacman
sudo pacman -S reflector
sudo cp $pacman_mirrorlist "$pacman_mirrorlist.bak"
sudo reflector --verbose --latest 10 --protocol https --sort rate --save $pacman_mirrorlist
sudo pacman -Sy
