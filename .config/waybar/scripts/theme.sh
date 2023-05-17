#!/bin/sh

set -exu

# get act theme
ACT_THEME=$(readlink -f ~/.config/waybar/theme.css | cut -d '/' -f6)

# get switch theme
SWITCHTO="dark"
if [ $ACT_THEME = "dark.css" ]; then
  SWITCHTO="light"
fi

#change style files
ln -sf ~/.config/waybar/$SWITCHTO.css ~/.config/waybar/theme.css
ln -sf ~/.config/hypr/pacman-$SWITCHTO.png ~/.config/hypr/wallpaper.png
ln -sf ~/.config/kitty/gruvbox-$SWITCHTO.conf ~/.config/kitty/style.conf

swww img ~/.config/hypr/wallpaper.png --transition-type center

sleep 2

killall -SIGUSR2 waybar
killall -SIGUSR1 kitty
killall -SIGUSR1 nvim

