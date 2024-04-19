#!/bin/bash

killall polybar

for m in $(polybar -m | cut -d ":" -f1); do
  TRAY_POS=left MONITOR=${m} polybar &
done

