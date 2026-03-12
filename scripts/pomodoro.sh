#!/usr/bin/env bash

# Script to display tmux-pomodoro-plus status for dracula theme
# This script calls the tmux-pomodoro-plus plugin's pomodoro.sh script directly

main() {
  # Call the actual pomodoro plugin script
  local pomodoro_plugin_script="$HOME/.config/tmux/plugins/tmux-pomodoro-plus/scripts/pomodoro.sh"
  
  if [[ -x "$pomodoro_plugin_script" ]]; then
    "$pomodoro_plugin_script"
  fi
}

# Run main
main
