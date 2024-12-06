#!/bin/bash

FRONT_APP=(
  label.font="$FONT:Bold:$FONT_SIZE.0"
  icon.font="$ICON_FONT:Regular:$ICON_FONT_SIZE.0" \
  icon.color=$BG_PRI_COLR
  label.color=$BG_PRI_COLR
  icon.padding_right=10
  background.color=$LAVENDER
  background.padding_left=-10
  script="$PLUGIN_DIR/front_app.sh"
)

sketchybar --add item front_app left \
           --set front_app "${FRONT_APP[@]}" \
           --subscribe front_app front_app_switched window_focus title_change
