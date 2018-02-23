#!/bin/bash
#Credit to x70b1: https://github.com/x70b1/polybar-scripts/tree/master/polybar-scripts/player-mpris-simple

player_status=$(playerctl status 2> /dev/null)
playing="$(playerctl metadata artist) - $(playerctl metadata title)"

if [ "$player_status" = "Playing" ]; then
  echo ${playing:0:50}
elif [ "$player_status" = "Paused" ]; then
  echo ${playing:0:50}
else
    echo ""
fi
