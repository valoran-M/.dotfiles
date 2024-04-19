#!/bin/bash

${HOME}/git/dotfiles/scripts/volume.sh 0

killall dunst

i3lock --color=#282828 --no-unlock-indicator

dunst & disown

${HOME}/git/dotfiles/scripts/volume.sh 0

