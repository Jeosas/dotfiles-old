#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar main &

for m in $(xrandr --query | grep -E "connected [0-9]+x[0-9]+" | grep -v "primary" | cut -d" " -f1); do
  MONITOR=$m polybar secondary &
done
