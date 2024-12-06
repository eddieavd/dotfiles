source "$HOME/.config/sketchybar/icons.sh"

VOLUME=$(osascript -e "output volume of (get volume settings)")
MUTED=$(osascript -e "output muted of (get volume settings)")

if [[ $MUTED != "false" ]]; then
    ICON="$VOLUME_0"
    VOLUME=0
else
    case ${VOLUME} in
        100) ICON="$VOLUME_100" ;;
        [7-9][0-9]) ICON="$VOLUME_66" ;;
        [3-6][0-9]) ICON="$VOLUME_33" ;;
        [1-2][0-9]|[1-9]) ICON="$VOLUME_10" ;;
        *) ICON="$VOLUME_0"
    esac
fi

volume_slider=(
    script="$PLUGIN_DIR/volume.sh"
    updates=on
    label.drawing=off
    icon.drawing=off
    slider.highlight_color=$PEACH
    slider.background.height=5
    slider.background.corner_radius=3
    slider.background.color=$LAVENDER
    slider.knob=􀀁
    slider.knob.drawing=on
)

status_bracket=(
  background.color=$BACKGROUND_1
  background.border_color=$BACKGROUND_2
)

sketchybar --add slider volume right \
           --set volume "${volume_slider[@]}" \
           --subscribe volume volume_change mouse.clicked

sketchybar -m \
    --set $NAME icon=$ICON \
    --set $NAME label="$VOLUME%"
    --set $NAME script="$PLUGIN_DIR/volume.sh"
    --set $NAME updates=

sketchybar --add bracket status brew github.bell wifi volume_icon \
           --set status "${status_bracket[@]}"
