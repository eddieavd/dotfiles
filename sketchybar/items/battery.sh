#!/bin/bash

BATTERY=(
  update_freq=120
  icon.font="$ICON_FONT:Regular:$ICON_FONT_SIZE.0"
  icon.color=$TEAL
  background.color=$BG_SEC_COLR
  script="$PLUGIN_DIR/battery.sh"
)

sketchybar --add item battery right \
           --set battery "${BATTERY[@]}" \
           --subscribe battery system_woke power_source_change

