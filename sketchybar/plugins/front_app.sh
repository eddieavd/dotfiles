#!/bin/sh

# Some events send additional information specific to the event in the $INFO
# variable. E.g. the front_app_switched event sends the name of the newly
# focused application in the $INFO variable:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting

if [ "$SENDER" = "front_app_switched" ] || 
   [ "$SENDER" = "window_focus"       ] || 
   [ "$SENDER" = "title_change"       ] ; then
  WINDOW_TITLE=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.title')
  APP_TITLE=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.app')
 
  if [[ $WINDOW_TITLE = "" ]]; then
    WINDOW_TITLE=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.app')
  fi
  
  if [[ ${#WINDOW_TITLE} -gt 19 ]]; then
    WINDOW_TITLE=$(echo "$WINDOW_TITLE" | cut -c 1-19)
    WINDOW_TITLE+="..."
  fi
  
  app_icon=""
  if [[ $APP_TITLE == "iTerm2" ]]; then
    app_icon+=" $($CONFIG_DIR/plugins/icon_map_fn.sh "term:$WINDOW_TITLE")"
  else
    app_icon+=" $($CONFIG_DIR/plugins/icon_map_fn.sh "$APP_TITLE")"
  fi

  sketchybar --set $NAME label="$WINDOW_TITLE" icon="$app_icon"
fi
