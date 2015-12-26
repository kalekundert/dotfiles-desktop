#!/usr/bin/env sh

xrandr --output LVDS1 --mode 1600x900
#xrandr --output LVDS1 --preferred
xrandr --output VGA1 --mode 1024x768 --right-of LVDS1
#xrandr --output VGA1 --preferred --left-of LVDS1
