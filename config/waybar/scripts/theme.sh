#!/bin/sh

set -exu

# get act theme
ACT_THEME=$(readlink -f ~/.config/waybar/theme.css | rev | cut -d '/' -f1 | rev)

# get switch theme
SWITCHTO="dark"
SIG_NVIM="SIGWINCH"
if [ $ACT_THEME = "dark.css" ]; then
  SWITCHTO="light"
  SIG_NVIM="SIGUSR1"
fi

#change style files
ln -sf ~/.config/waybar/$SWITCHTO.css ~/.config/waybar/theme.css
ln -sf ~/.config/river/wallpapers/pacman-$SWITCHTO.png \
       ~/.config/river/wallpapers/wallpaper.png
ln -sf ~/.config/kitty/gruvbox-$SWITCHTO.conf ~/.config/kitty/style.conf
ln -sf ~/.config/rofi/gruvbox-$SWITCHTO.rasi ~/.config/rofi/theme.rasi

swww img ~/.config/hypr/wallpapers/wallpaper.png \
      --transition-type center \
      --transition-duration 0.2 \
      --transition-fps 120

# sleep 2

killall -SIGUSR2 -v  waybar -q &
killall -SIGUSR1 -v kitty -q &
killall -$SIG_NVIM -v nvim -q &

