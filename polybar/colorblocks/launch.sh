#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/colorblocks"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# lauch polybar
polybar -q main -c "$DIR"/config.ini &

# Polybar in multiple monitors

if [[ $(xrandr -q | grep "HDMI-1 connected") ]]; then
  polybar -q top_external -c "$DIR"/config.ini &
fi
