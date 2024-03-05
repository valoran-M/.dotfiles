#!/bin/sh

###
# Author : gurvan.dev
###

BASEDIR=$(dirname "$0")/..
PKGSDIR="${BASEDIR}/pkgs"

if [ $(command -v pacman) ]; then
  sudo pacman -S --needed $(cat $PKGSDIR/arch)
fi

if [ $(command -v yay) ]; then
  yay -S --needed $(cat $PKGSDIR/aur)
fi

sudo curl -Lo /usr/bin/theme.sh 'https://git.io/JM70M' && sudo chmod +x /usr/bin/theme.sh

