#!/bin/bash

# Grant execution permissions
chmod +x packages.sh
chmod +x git_config.sh
chmod +x terminal.sh

# Execute configuration scripts
./packages.sh
./git_config.sh
./terminal.sh

# Success notification
printf "🎉 Fresh Install Completed\n"
