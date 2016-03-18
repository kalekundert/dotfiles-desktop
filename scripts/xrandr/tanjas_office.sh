#!/usr/bin/env sh

xrandr --output LVDS1 --preferred
xrandr --output DP1 --auto --left-of LVDS1
xrandr --output VGA1 --auto --left-of LVDS1
