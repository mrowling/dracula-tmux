#!/usr/bin/env bash

# Script to display carelink-go status for dracula theme
# This script calls the tmux-carelink-go plugin's carelink.sh script directly

main() {
  # Call the actual carelink plugin script
  # Use local development version if TMUX_LOCAL_DEV is set
  local carelink_plugin_script
  if [[ -n "$TMUX_LOCAL_DEV" ]] && [[ -d "$HOME/code/tmux-carelink-go" ]]; then
    carelink_plugin_script="$HOME/code/tmux-carelink-go/scripts/carelink.sh"
  else
    carelink_plugin_script="$HOME/.config/tmux/plugins/tmux-carelink-go/scripts/carelink.sh"
  fi
  
  if [[ -x "$carelink_plugin_script" ]]; then
    "$carelink_plugin_script"
  fi
}

# Run main
main
