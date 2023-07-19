#!/usr/bin/env sh

set -ex

tagVol="notifyvol"

notify_bright()
{
    lig=`light`
    lig=${lig%.*}

    angle="$(( ((${bri}+2)/5) * 5 ))"

    dunstify -h int:value:"$lig" "Brightness: ${lig}%" -u low -r 91190 -t 800
}

case $1 in
    i) light -A 5
        notify_bright
    ;;
    d) light -U 5
        notify_bright
    ;;
    *) echo "brightness.sh [action]"
        echo "i -- increase brightness [+5]"
        echo "d -- decrease brightness [-5]"
    ;;
esac
