#!/bin/bash

endline="\n\n"

# Grant execution permissions
chmod +x packages.sh
chmod +x git_config.sh
chmod +x system.sh
chmod +x programming_languages.sh
chmod +x terminal.sh

# Execute configuration scripts
./packages.sh
./git_config.sh
./system.sh
./programming_languages.sh
./terminal.sh

# Success notification
printf "🎉 Fresh Install Completed$endline"
