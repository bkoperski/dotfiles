#!/bin/bash

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

for monitor in $( xrandr | grep " connected" | cut -d " " -f 1 ); do
    MONITOR=$monitor polybar -r bottom &
done
