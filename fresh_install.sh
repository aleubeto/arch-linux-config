#!/bin/bash

# Grant execution permissions
chmod +x helpers.sh
chmod +x git_config.sh
chmod +x packages.sh
chmod +x system.sh
chmod +x programming_languages.sh
chmod +x terminal.sh
chmod +x software.sh
chmod +x keyring_recovery.sh

# Execute configuration scripts
./git_config.sh
./packages.sh
./system.sh
./programming_languages.sh
./terminal.sh

# Success notification
source helpers.sh
notification "🎉 Fresh Install Completed"

# Reboot system
reboot=confirm "🚀 Reboot system"
if $reboot; then
  sudo reboot
fi

