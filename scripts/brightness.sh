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
  max=$(brightnessctl m)
  val=$(brightnessctl g)
  step=$((${max} * 5 / 100))
  if [ $1 -lt 0 ]; then
    v=$(( ${val} - ${max} * 5 / 100))
    brightnessctl s "$(( ${val} - ${max} * 5 / 100))"
  elif [ $1 -gt 0 ]; then
    brightnessctl s "$(( ${val} + ${max} * 5 / 100))"
  fi
}
change_bright $(($1))
notify_bright


    5
max 100

((max * 5) / 100)
