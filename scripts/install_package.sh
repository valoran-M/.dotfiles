#!/bin/sh

BASEDIR=$(dirname "$0")/..
PKGSDIR="${BASEDIR}/pkgs"

sudo pacman -S --needed $(cat $PKGSDIR/arch)
yay -S --needed $(cat $PKGSDIR/aur)

