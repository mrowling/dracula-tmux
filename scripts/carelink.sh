#!/usr/bin/env bash

# Script to display carelink-go status for dracula theme
# This script calls the tmux-carelink-go plugin's carelink.sh script directly

main() {
  # Call the actual carelink plugin script
  local carelink_plugin_script="$HOME/.config/tmux/plugins/tmux-carelink-go/scripts/carelink.sh"
  
  if [[ -x "$carelink_plugin_script" ]]; then
    "$carelink_plugin_script"
  fi
}

# Run main
main
