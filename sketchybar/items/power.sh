sketchybar --add item battery right \
           --set battery update_freq=60 \
		   				 icon.color=$BLACK \
						 icon.background.color=$SPACE_SELECTED \
						 icon.font="$FONT:Bold:18.0" \
						 icon.background.height=$ITEM_BACKGROUND_HEIGHT \
						 icon.background.padding_right=0 \
						 icon.background.corner_radius=$ITEM_CORNER_RADIUS \
                         icon.drawing=on \
                         script="~/.config/sketchybar/plugins/power.sh" \
                         label.color=$LABEL_COLOR \
                         background.color=$SPACE_DESELECTED \
                         background.padding_left=0  \
                         background.height=$ITEM_BACKGROUND_HEIGHT        \
                         background.corner_radius=$ITEM_CORNER_RADIUS \
                         padding_right=$ITEM_PADDING \
                         padding_left=0 \
                         label.padding_right=12
