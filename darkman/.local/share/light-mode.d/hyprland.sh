#!/usr/bin/env sh

sed -i 's/dark/light/g' ~/.config/css/colors.css
killall -SIGUSR2 waybar

sed -i 's/rgba(81a2beff)/rgba(4271aeff)/g' ~/.config/hypr/hyprland.conf
