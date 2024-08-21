#!/bin/sh

picom --config ~/.config/picom/picom.conf &
xbindkeys &
conky | xargs -I % echo -e % | xargs -I % xsetroot -name % &
xrandr --output HDMI-0 --auto --left-of DP-0 --output DP-0 --auto --primary &
./.fehbg &
lxpolkit &

while type dwm >/dev/null ; do dwm && continue || break ; done

pkill -P $$
