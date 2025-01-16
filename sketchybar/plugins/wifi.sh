#!/usr/bin/env sh

LABEL="$(system_profiler SPAirPortDataType | awk '/Current Network Information:/ { getline; print substr($0, 13, (length($0) - 13)); exit }')"

if [[ "$LABEL" == "" ]]; then
   sketchybar --set wifi label="Disconnected"
else   LABEL=$(echo "$LABEL" | sed "s/Current Wi-Fi Network: //")
   sketchybar --set wifi label="$LABEL"
fi
