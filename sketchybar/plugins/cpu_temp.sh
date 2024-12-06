#!/bin/zsh

CPU_TEMP="$(smctemp -c)"

sketchybar --set $NAME label="$CPU_TEMP ºC"
