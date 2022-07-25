#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

# Configurar monitores
xrandr --output DP-0 --primary --mode 1920x1080 --rate 165 --output HDMI-0 --mode 1920x1080 --rate 75
# Atajos de teclado
sxhkd -c $HOME/.config/bspwm/sxhkd/sxhkdrc &
# Barra de tareas
$HOME/.config/polybar/launch.sh &
# Fondo de pantalla
feh --bg-fill ~/.config/bspwm/wallpaper.png &
# Tema del ratón
xsetroot -cursor_name left_ptr &
# Compositor
picom &
# Programas
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
