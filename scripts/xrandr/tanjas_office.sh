#!/usr/bin/env sh

xrandr --output LVDS1 --preferred
xrandr --output VGA1 --auto --left-of LVDS1
