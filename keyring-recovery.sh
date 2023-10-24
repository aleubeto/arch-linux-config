#!/bin/bash

source helpers.sh

notification "🔃 UPDATING KEYRING"
sudo pacman -S archlinux-keyring
sudo pacman-key --refresh
notification "✅ Keyring updated"