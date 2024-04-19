#!/bin/sh
#
tagVol="notifyvol"

notify_vol()
{
    vol=`pamixer --get-volume | cat`
    bar=$(seq -s "─" $(($vol / 5)) | sed 's/[0-9]//g')

    sink=`pamixer --get-default-sink | tail -1 | rev | cut -d '"' -f -2 | rev | sed 's/"//'`
    mute=`pamixer --get-mute | cat`

    angle="$(( (($vol+2)/5) * 5 ))"
    ico="~/.config/dunst/iconvol/vol-${angle}.svg"

    if [ "$mute" = true ] ; then
        dunstify "Muted" -i $ico -a "$sink" -u low -r 91190 -t 800

    elif [ $vol -ne 0 ] ; then
        dunstify -i $ico -a "$sink" -u low -h string:x-dunst-stack-tag:$tagVol \
        -h int:value:"$vol" "Volume: ${vol}%" -r 91190 -t 800

    else
        dunstify -i $ico "Volume: ${vol}%" -a "$sink" -u low -r 91190 -t 800
    fi
}

change_vol() {
  if [ $1 -lt 0 ]; then
    pamixer -d 5
  elif [ $1 -gt 0 ]; then
    pamixer -i $1
  else
     pamixer -t
  fi
  notify_vol
}

change_vol $(($1))

