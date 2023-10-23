#!/bin/bash

# Install neovim
printf "🔃 NEOVIM CONFIGURATION\n"
sudo pacman -S neovim

# Install and configure nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
printf "✅ nvchad successfully installed\n"
