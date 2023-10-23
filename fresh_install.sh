#!/bin/bash

# Grant execution permissions
chmod -x packages.sh
chmod -x git_config.sh

# Execute configuration scripts
./packages.sh
./git_config.sh
