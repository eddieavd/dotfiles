#!/bin/bash

sketchybar --add item cputemp right \
           --set cputemp update_freq=2 \
                                 icon=󰏈 \
		   		 icon.color=$BLACK \
				 icon.background.color=$SPACE_SELECTED \
				 icon.font="$FONT:Bold:18.0" \
				 icon.background.height=$ITEM_BACKGROUND_HEIGHT \
				 icon.background.padding_right=0 \
				 icon.background.corner_radius=$ITEM_CORNER_RADIUS \
                         icon.drawing=on \
                         script="~/.config/sketchybar/plugins/cpu_temp.sh" \
                         label.color=$LABEL_COLOR \
                         background.color=$SPACE_DESELECTED \
                         background.padding_left=0  \
                         background.height=$ITEM_BACKGROUND_HEIGHT        \
                         background.corner_radius=$ITEM_CORNER_RADIUS \
                         padding_right=$ITEM_PADDING \
                         padding_left=0 \
                         label.padding_right=12
