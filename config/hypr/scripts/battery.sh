#!/bin/bash

set -ex

min_urgent1=10
min_urgent2=5

notif1=true
notif2=true

path=/sys/class/power_supply/BAT0
status_file="$path/status"
capacity_file="$path/capacity"

status=$(cat $status_file)
capacity=$(cat $capacity_file)

check_status(){
  status_tmp=$(cat $status_file)
  if [ "$status_tmp" = "Discharging" ] && [ "$status" = "Charging" ]; then
    status=$status_tmp
    echo "OK"
    dunstify "󰁹 Discharging" -u low -r 91190 -t 1000
  fi

  if [ "$status_tmp" = "Charging" ] && [ "$status" = "Discharging" ]; then
    status=$status_tmp
    dunstify "󰂄 Charging" -u low -r 91190 -t 1000
  fi
}

check_capcity(){
  capacity_tmp=$(cat $capacity_file)
  if [ $capacity_tmp -le $capacity ]; then
    if [ $capacity_tmp -le $min_urgent2 ] && [ $notif2 == true ]; then
      dunstify "󰂎 capcity < 5 %   " -u critical -r 91190 -t 5000
      notif2=false
    elif [ $capacity_tmp -le $min_urgent1 ] && [ $notif1 == true ]; then
      dunstify "󰁺 capcity < 10 %  " -u critical -r 91190 -t 5000
      notif1=false
      notif2=true
    elif [ $capacity_tmp -gt $min_urgent1 ]; then
      notif1=true
      notif2=true
    fi
  fi
  capacity=$capacity_tmp
}

while true
do
  check_status
  check_capcity
  sleep 1s
done


