#!/bin/bash

source helpers.sh

# Path variables
wallpapers="$HOME/Pictures/wallpapers"
wave_wallpaper="$wallpapers/nordic-wallpapers/wallpapers/ign_vaporWave.png"
fonts="./media/fonts"
icons="$HOME/Pictures/icons"
profile_icon="$icons/tom_nook.jpg"

notification "🔃 CONFIGURATING ADITTIONAL MEDIA"

# Installing aditional fonts, icons and wallpapers
cp -r $fonts "$HOME/.fonts"
cp -r "./media/icons" $icons
git clone https://github.com/linuxdotexe/nordic-wallpapers.git $wallpapers
notification "✅ Fonts, Icons and Wallpapers successfully installed"
