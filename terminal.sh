#!/bin/bash

source helpers.sh

# Install neovim
notification "🔃 NEOVIM CONFIGURATION"
sudo pacman -S neovim

# Install and configure nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
notification "✅ nvchad successfully installed"

# Install other utilities
sudo pacman -S tree
sudo pacman -S xclip

# Custom alias
echo "alias ssh=cat ~/.ssh/id_rsa.pub | xclip -selection clipboard" >> ~/.bashrc
