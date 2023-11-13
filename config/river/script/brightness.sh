#!/bin/sh

set -ex

notify_bright()
{
    lig=`light`
    lig=${lig%.*}

    angle="$(( ((${bri}+2)/5) * 5 ))"

    dunstify -h int:value:"$lig" "Brightness: ${lig}%" -u low -r 91190 -t 800
}

change_bright() {
  if [ $1 -lt 0 ]; then
    light -U 5
  elif [ $1 -gt 0 ]; then
    light -A $1
  else
     pamixer -t
  fi
  notify_bright
}

change_bright $(($1))

