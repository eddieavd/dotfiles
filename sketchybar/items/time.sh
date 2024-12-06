#!/bin/bash

TIME=(
  update_freq=30
  icon="󱑁"
  icon.drawing=on
  label.padding_left=10
  label.padding_right=6
  background.color=$BG_SEC_COLR
  background.padding_right=2
  script="$PLUGIN_DIR/time.sh"
)

sketchybar --add item time right \
           --set time "${TIME[@]}" 

