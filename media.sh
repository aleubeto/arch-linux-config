#!/bin/bash

source helpers.sh

# Path variables
wallpapers="~/Pictures/wallpapers"
wave_wallpaper="$wallpapers/nordic-wallpapers/wallpapers/ign_vaporWave.png"
downloads="~/Downloads"
fonts="media/fonts"
icons="~/Pictures/icons"
profile_icon="$icons/tom_nook.jpg"

notification "🔃 CONFIGURATING ADITTIONAL MEDIA"

# Installing aditional fonts
cp -r $fonts $downloads
notification "✅ New fonts successfully installed"

# Installing and configurating profile picture
cp -r "media/icons" $icons
dconf write /org/gnome/desktop/background/picture-uri $profile_icon
notification "✅ Profile picture successfully updated"

# Installing and configurating wallpapers
git clone https://github.com/linuxdotexe/nordic-wallpapers.git $wallpapers
gsettings set org.gnome.desktop.background picture-uri $wave_wallpaper
notification "✅ Wallpaper successfully updated"

# Updating Tilix Font
dconf write /com/gexperts/Tilix/profiles/default/font "'JetBrainsMonoNL Nerd Font 12'"

