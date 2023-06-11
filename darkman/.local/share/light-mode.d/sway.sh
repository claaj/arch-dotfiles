#!/usr/bin/env sh
#
sed -i "s#^include *.*#include ~/.config/sway/light#g" ~/.config/sway/config
sed -i 's/dark/light/g' ~/.config/css/colors.css



#/usr/bin/swaymsg reload
#/usr/bin/swaymsg reload
