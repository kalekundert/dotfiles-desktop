#!/usr/bin/env sh

#xrandr                                                                      \
#     --output VGA1 --off                                                    \
#     --output LVDS1 --off

#xrandr                                                                      \
#    --output LVDS1 --auto                                                   \
#    --output VGA1 --auto --above LVDS1

#xrandr  --output  LVDS --auto --rotate normal --pos 0x0 --output
#              VGA --auto --rotate left --right-of LVDS

#xrandr --output LVDS1 --preferred
#xrandr --output VGA1 --mode 1024x768 --right-of LVDS1
#xrandr --output VGA1 --preferred --left-of LVDS1

xrandr --output VGA1 --off --output LVDS1 --off
sleep 3
xrandr --output VGA1 --auto
sleep 3
xrandr --output LVDS1 --auto --below VGA1

