#!/usr/bin/env sh

xrandr                                                                      \
     --output LVDS1 --off                                                   \
     --output VGA1 --off                                                     \

xrandr                                                                      \
    --output LVDS1 --auto                                                   \
    --output VGA1 --auto --above LVDS1                                       \
