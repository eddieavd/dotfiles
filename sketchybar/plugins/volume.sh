#!/bin/bash

WIDTH=100

volume_change() {
  source "$CONFIG_DIR/icons.sh"
  case $INFO in
    [6-9][0-9]|100) ICON=$VOLUME_100
    ;;
    [3-5][0-9]) ICON=$VOLUME_66
    ;;
    [1-2][0-9]) ICON=$VOLUME_33
    ;;
    [1-9]) ICON=$VOLUME_10
    ;;
    0) ICON=$VOLUME_0
    ;;
    *) ICON=$VOLUME_100
  esac

  INITIAL_WIDTH="$(sketchybar --query $NAME | jq -r ".slider.width")"
  if [ "$INITIAL_WIDTH" -eq "0" ]; then
    sketchybar --animate tanh 30 --set $NAME slider.width=$WIDTH 
  fi

  sleep 2

  # Check wether the volume was changed another time while sleeping
  FINAL_PERCENTAGE="$(sketchybar --query $NAME | jq -r ".slider.percentage")"
  if [ "$FINAL_PERCENTAGE" -eq "$INFO" ]; then
    sketchybar --animate tanh 30 --set $NAME slider.width=0
  fi

  VOLUME=$(osascript -e "output volume of (get volume settings)")
  MUTED=$(osascript -e "output muted of (get volume settings)")
  
  if [[ $MUTED != "false" ]]; then
      ICON="$SOUND_MUT_ICON"
      VOLUME=0

  sketchybar --set volume_icon icon=$ICON \
             --set volume_icon label="$VOLUME%" \
             --set $NAME slider.percentage=$INFO
}

mouse_clicked() {
  osascript -e "set volume output volume $PERCENTAGE"
}

case "$SENDER" in
  "volume_change") volume_change
  ;;
  "mouse.clicked") mouse_clicked
  ;;
esac
