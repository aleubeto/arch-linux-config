#!/bin/bash

# Grant execution permissions
chmod +x helpers.sh
chmod +x git_config.sh
chmod +x programming_languages.sh
chmod +x software.sh
chmod +x media.sh
chmod +x gnome.sh
chmod +x terminal.sh

# Execute configuration scripts
./git_config.sh
./programming_languages.sh
./software.sh
./media.sh
./gnome.sh
./terminal.sh

# Success notification
source helpers.sh
notification "🎉 Fresh Install Completed"

# Shutdown system
if confirm "🚀 System reboot required"; then
  notification "...Shutting system down"
  sudo reboot
fi
