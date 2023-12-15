#!/bin/bash

source helpers.sh

notification "🔃 GNOME DESKTOP CONFIGURATION"

sudo apt install chrome-gnome-shell
sudo apt install gnome-extensions
notification "✅ gnome extensions successfully installed"

# Dark Adwaita theme
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
notification "✅ dark theme configured"

# Gnome extensions
# gnome-extensions enable forge
# gnome-extensions enable forge
# notification "✅ gnome extensions successfully configurated"
