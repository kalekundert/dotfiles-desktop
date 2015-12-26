#!/usr/bin/env sh

if [ $# != 1 ]; then
    echo "Usage: ./lab.sh <num_monitors>"
    exit 1
fi

if [ "$1" = 1 ]; then
    xrandr --output HDMI3 --preferred
    xrandr --output LVDS1 --off
elif [ "$1" = 2 ]; then
    xrandr --output HDMI3 --preferred
    xrandr --output LVDS1 --preferred --right-of HDMI3
else
    echo "Usage: ./lab.sh <num_monitors>"
    echo "num_monitors must be either 1 or 2"
fi

