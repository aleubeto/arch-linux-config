#!/bin/bash

source helpers.sh

notification "🔃 INSTALLING ADITTIONAL SOFTWARE"

yay -S gnome-browser-connector
yay -S visual-studio-code-bin
sudo snap install nordpass
sudo snap install godot --classic

notification "✅ adittional programs installed"
