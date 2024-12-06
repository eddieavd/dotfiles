#!/bin/bash

POPUP_OFF='sketchybar --set apple.logo popup.drawing=off'
POPUP_CLICK_SCRIPT='sketchybar --set $NAME popup.drawing=toggle'

apple_logo=(
  icon=$APPLE_ICON
  icon.font="$FONT:Regular:18.0"
  icon.color=$LAVENDER
  padding_right=15
  padding_left=-10
  label.drawing=off
  click_script="$POPUP_CLICK_SCRIPT"
  popup.height=35
)

apple_prefs=(
  icon=$PREFERENCES
  label="Preferences"
  click_script="open -a 'System Preferences'; $POPUP_OFF"
)

apple_activity=(
  icon=$ACTIVITY
  label="Activity"
  click_script="open -a 'Activity Monitor'; $POPUP_OFF"
)

apple_lock=(
  icon=$LOCK
  label="Lock Screen"
  click_script="pmset displaysleepnow; $POPUP_OFF"
)

sketchybar --add item apple.logo left                  \
           --set apple.logo "${apple_logo[@]}"         \
                                                       \
           --add item apple.prefs popup.apple.logo     \
           --set apple.prefs "${apple_prefs[@]}"       \
                                                       \
           --add item apple.activity popup.apple.logo  \
           --set apple.activity "${apple_activity[@]}" \
                                                       \
           --add item apple.lock popup.apple.logo      \
           --set apple.lock "${apple_lock[@]}"

# APPLE=(
#   icon=$APPLE_ICON
#   icon.color=$WHITE
#   icon.padding_left=4
#   label.drawing=off
#   background.padding_left=0
#   background.padding_right=22
#   background.color=$BG_PRI_CLOR
# )
# 
# sketchybar --add item apple left \
#            --set apple "${APPLE[@]}"
# 
