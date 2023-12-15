#!/bin/bash

source helpers.sh

notification "🔃 GNOME DESKTOP CONFIGURATION"

sudo apt install chrome-gnome-shell
sudo apt install -y gnome-shell-extensions 
notification "✅ gnome extensions successfully installed"
