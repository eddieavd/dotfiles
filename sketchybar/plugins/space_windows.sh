#!/bin/bash

NUM_SPACES=$(yabai -m query --spaces | jq length)
NUM_WINDOWS=$(yabai -m query --windows | jq length)

for (( i=0;i<$NUM_SPACES;i++ ))
do
# echo "---- checking space $i..."
  icon_strip=""
  for (( j=0;j<$NUM_WINDOWS;j++ ))
  do
    WINDOW=$(yabai -m query --windows | jq -r '.['$j']')
    WINDOW_SPACE=$(echo $WINDOW | jq -r '.space')
    WINDOW_NAME=$(echo $WINDOW | jq -r '.app')
    WINDOW_TITLE=$(echo $WINDOW | jq -r '.title')

    if [[ $(($i + 1)) == $WINDOW_SPACE ]]; then
      if [[ $WINDOW_NAME == "iTerm2" ]]; then
        icon_strip+=" $($CONFIG_DIR/plugins/icon_map_fn.sh "term:$WINDOW_TITLE")"
      else
        icon_strip+=" $($CONFIG_DIR/plugins/icon_map_fn.sh "$WINDOW_NAME")"
      fi
    fi
  done
  icon_strip+=" "
# echo "space $i icons: $icon_strip"
  full_label=""
  if [[ ${#icon_strip} == 1 ]]; then
    full_label="{}"
  else
    full_label="{$icon_strip }"
  fi
  sketchybar --set space.$(($i + 1)) label="$full_label"
# echo "---- finished space $i"
done
