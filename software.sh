#!/bin/bash

source helpers.sh

notification "🔃 INSTALLING ADITTIONAL SOFTWARE"

yay -S gnome-browser-connector
yay -S visual-studio-code-bin
sudo snap install nordpass
sudo snap install godot --classic

notification "✅ adittional programs installed"

# Dark Adwaita theme
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

notification "✅ dark theme configured"