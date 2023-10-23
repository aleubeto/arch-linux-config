#!/bin/bash

# Install git
sudo pacman -S git

# Git config variables
printf "🔃 GIT CONFIGURATION\n"
read -p "git user.name: " git_user_name
read -p "git user.email: " git_user_email
read -p "git default branch name: " git_default_branch_name

# Git global configurations
git config --global user.name "$git_user_name"
git config --global user.email "$git_user_email"
git config --global init.defaultBranch "$git_default_branch_name"
printf "✅ git global variables successfully configured\n"

# Create new SSH keys
ssh-keygen -t rsa -b 4096 -C "$git_user_email"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
printf "✅ new SSH keys successfully generated and configured\n"
