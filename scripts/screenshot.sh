#!/bin/sh

DATE=$(date +%Y%m%d_%Ih%Mm%Ss)
SCREEN_PATH="$HOME/Pictures/Screenshots/${DATE}_grim.png"


grim -g "$(slurp)" "${SCREEN_PATH}" && dunstify 'Screenshot taken.'

