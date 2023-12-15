#!/bin/bash

source helpers.sh

notification "🔃 INSTALLING ADITTIONAL SOFTWARE"

# Aplications
sudo snap install nordpass
sudo snap install code --classic
sudo snap install slack --classic
sudo snap install godot --classic

# Comands
sudo apt install tree
sudo apt install xclip

notification "✅ adittional programs installed"
