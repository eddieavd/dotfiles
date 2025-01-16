#!/bin/zsh

CPU_TEMP="$(smctemp -c)"

sketchybar --set cputemp label="$CPU_TEMP ºC"
