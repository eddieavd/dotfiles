#!/bin/bash

SPACE_ICONS=("󰼏" "󰼐" "󰼑" "󰼒" "󰼓" "󰼔" "󰼕" "󰼖" "󰼗" "󰿪")

SPACE=(
  icon.padding_left=16
  icon.padding_right=4
  label.padding_right=20
  icon.color=$WHITE
  icon.font="$ICON_FONT:Regular:$ICON_FONT_SIZE.0"
  icon.highlight_color=$SKY
  icon.background.drawing=on
  background.padding_left=-8
  background.padding_right=-8
  background.color=$BG_SEC_COLR
  background.corner_radius=10
  background.drawing=on
  label.drawing=on
  label.font="$FONT:Regular:14.0"
  script="$PLUGIN_DIR/space.sh"
)

sid=0
for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))
  sketchybar --add space space.$sid left
  sketchybar --set space.$sid space=$sid
  sketchybar --set space.$sid icon=${SPACE_ICONS[i]}
  sketchybar --set space.$sid "${SPACE[@]}"
done

sketchybar --add item space_separator left \
           --set space_separator icon= \
                                 update_freq=1 \
                                 icon.font="$ICON_FONT:Bold:$ICON_FONT_SIZE.0" \
                                 background.padding_left=4 \
                                 background.padding_right=4 \
                                 label.drawing=on \
                                 background.drawing=on \
                                 script="$PLUGIN_DIR/space_windows.sh" \
                                 icon.color=$DARK_WHITE \
