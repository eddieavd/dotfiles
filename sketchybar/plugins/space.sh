#!/bin/bash

source "$CONFIG_DIR/colors.sh"

if [ "$SELECTED" = "true" ]; then
  sketchybar --animate tanh 20 --set $NAME \
             icon.color=$PEACH
else
  sketchybar --animate tanh 20 --set $NAME \
             icon.color=$LAVENDER
fi
