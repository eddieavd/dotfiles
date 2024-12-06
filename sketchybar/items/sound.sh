#!/bin/bash

# volume_slider=(
#   script="$PLUGIN_DIR/volume.sh"
#   updates=on
#   label.drawing=off
#   icon.drawing=off
#   slider.highlight_color=$BLUE
#   slider.background.height=5
#   slider.background.corner_radius=3
#   slider.background.color=$BG_SEC_COLR
#   slider.knob=􀀁
#   slider.knob.drawing=on
# )
# 
# volume_icon=(
#   background.drawing=on
#   background.color=$BG_SEC_COLR
#   click_script="$PLUGIN_DIR/volume_click.sh"
#   icon=$VOLUME_100
#   icon.width=0
#   icon.align=left
#   icon.color=$PEACH
#   icon.font="$FONT:Regular:18.0"
#   icon.drawing=on
#   label.width=92
#   label.align=left
#   label.drawing=on
#   label.font="$FONT:Regular:16.0"
#   label.color=$PEACH
# )
# 
# status_bracket=(
#   background.color=$BG_SEC_COLR
#   background.border_color=$PEACH
# )
# 
# sketchybar --add slider volume right          \
#            --set volume "${volume_slider[@]}" \
#            --subscribe volume volume_change mouse.clicked \
#            --add item volume_icon right \
#            --set volume_icon "${volume_icon[@]}"
# 
# sketchybar --add bracket status brew github.bell wifi volume_icon \
#            --set status "${status_bracket[@]}"

SOUND=(
  icon.color=$GREEN
  background.color=$BG_SEC_COLR
  script="$PLUGIN_DIR/sound.sh"
)

sketchybar --add item sound right \
 --set sound "${SOUND[@]}" \
 --subscribe sound volume_change 

