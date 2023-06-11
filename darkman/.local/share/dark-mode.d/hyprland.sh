#!/usr/bin/env sh

sed -i 's/light/dark/g' ~/.config/css/colors.css
killall -SIGUSR2 waybar

sed -i 's/rgba(4271aeff)/rgba(81a2beff)/g' ~/.config/hypr/hyprland.conf
