#!/usr/bin/env sh
sed -i "s#^include *.*#include ~/.config/sway/dark#g" ~/.config/sway/config
sed -i 's/light/dark/g' ~/.config/css/colors.css

#/usr/bin/swaymsg reload
#/usr/bin/swaymsg reload
