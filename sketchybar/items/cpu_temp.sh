#!/bin/bash
CPUTEMP=(
  update_freq=2
  icon.font="$ICON_FONT:Regular:$ICON_FONT_SIZE.0"
  icon=󰏈
  icon.color=$RED
  background.color=$BG_SEC_COLR
  script="$PLUGIN_DIR/cpu_temp.sh"
)

sketchybar --add item cputemp right \
           --set cputemp "${CPUTEMP[@]}" 
