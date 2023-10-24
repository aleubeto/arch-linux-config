#!/bin/bash

notification() {
  echo ""
  echo "$1"
  echo ""
}

confirm() {
  while true; do
    local message="$1"
    echo ""
    read -p "$message [y/n]" input
    case "$input" in 
      [Yy]|"")
        return 0
        ;;
      [Nn])
        return 1
        ;;
    esac
  done
}

