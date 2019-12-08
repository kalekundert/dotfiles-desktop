#!/usr/bin/env sh

xrandr --output LVDS1 --preferred
#xrandr --output VGA1 --preferred --left-of LVDS-0
xrandr --output VGA1 --mode 1024x768 --left-of LVDS1
