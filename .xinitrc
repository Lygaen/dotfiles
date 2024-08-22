#!/bin/sh

picom --config ~/.config/picom/picom.conf &
xbindkeys &
conky | xargs -I % echo -e % | xargs -I % xsetroot -name % &
xlayoutdisplay -p DP-0 &
./.fehbg &
lxpolkit &
greenclip daemon &
steam-native -silent &

while type dwm >/dev/null ; do dwm && continue || break ; done

pkill -P $$
