#!/bin/sh

DATE=$(date +%Y%m%d_%Ih%Mm%Ss)
PATH="$HOME/Pictures/Screenshots/${DATE}_grim.png"


grim -g \"\$(slurp)\" "${PATH}" && dunstify 'Screenshot taken.'
