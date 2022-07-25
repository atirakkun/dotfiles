#!/usr/bin/env sh
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

      for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        CONTROL=$m polybar --reload control -c ~/.config/polybar/config.ini &
        WORKSPACE=$m polybar --reload workspace -c ~/.config/polybar/config.ini &
        SOUND=$m polybar --reload sound -c ~/.config/polybar/config.ini &
        MIDDLE=$m polybar --reload middle -c ~/.config/polybar/config.ini &
        STATUS=$m polybar --reload status -c ~/.config/polybar/config.ini &
        INFO=$m polybar --reload info -c ~/.config/polybar/config.ini &
      done