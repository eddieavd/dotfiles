#!/bin/bash

TITLE_APP=(
  label.font="$FONT:Bold:$FONT_SIZE.0"
  icon.font="$ICON_FONT:Regular:$ICON_FONT_SIZE.0" \
  icon.color=$BG_PRI_COLR
  label.color=$BG_PRI_COLR
  background.color=$LAVENDER
  script="$PLUGIN_DIR/window_title.sh"
)

sketchybar --add item window_title left \
           --set window_title "${TITLE_APP[@]}" \
           --subscribe title window_focus front_app_switched space_change title_change
