#!/bin/bash

FRONT_APP_SCRIPT='
APP_TITLE=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.app')
APP_ICON="$($HOME/.config/sketchybar/plugins/icon_map.sh $APP_TITLE)"
WINDOW_TITLE=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.title')
if [[ ${#WINDOW_TITLE} -gt 32 ]]; then
  WINDOW_TITLE=$(echo "$WINDOW_TITLE" | cut -c 1-32)
  WINDOW_TITLE+="..."
fi
sketchybar --set $NAME icon="$APP_ICON" label="$WINDOW_TITLE"
'

yabai=(
  script="$PLUGIN_DIR/yabai.sh"
  updates=on
  drawing=off
  label.drawing=off
  icon.width=30
  icon=$YABAI_GRID
#  associated_display=active
)

front_app=(
  script="$FRONT_APP_SCRIPT"
  icon.drawing=on
  icon.color=$SPACE_DESELECTED
  icon.padding_left=12
  icon.padding_right=8
  label.padding_left=0
  label.padding_right=12
#  associated_display=active
  background.color=$LAVENDER
)

sketchybar --add item yabai left               \
           --set yabai "${yabai[@]}"           \
           --subscribe yabai window_focus      \
                             windows_on_spaces \
                             mouse.clicked     \
                                               \
           --add item front_app left           \
           --set front_app "${front_app[@]}"   \
           --subscribe front_app front_app_switched window_focus

