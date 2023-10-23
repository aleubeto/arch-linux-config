#!/bin/bash

endline="\n\n"

# Install neovim
printf "🔃 NEOVIM CONFIGURATION$endline"
sudo pacman -S neovim

# Install and configure nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
printf "✅ nvchad successfully installed$endline"
