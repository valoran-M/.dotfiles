#!/bin/sh

# thanks to :
#   https://github.com/adi1090x/rofi/tree/master
#   
#   Author : Aditya Shakya (adi1090x)
#   Github : @adi1090x

set -ex

# CMDs
uptime="`uptime -p | sed -e 's/up //g'`"
host=`hostname`

# Options
hibernate='󰏦 '
shutdown='󰐥 '
reboot=' '
lock=' '
suspend=' '
logout='󰗼 '

DIR="~/.config/rofi/power_menu/"

# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
		-p " $USER@$host" \
		-mesg "󰍹 Last Login: $lastlogin |  Uptime: $uptime" \
		-theme ${DIR}/config.rasi
}

run_rofi() {
	echo -e "$lock\n$suspend\n$logout\n$hibernate\n$reboot\n$shutdown" | rofi_cmd
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $shutdown)
		systemctl poweroff
        ;;
    $reboot)
    systemctl reboot
        ;;
    $hibernate)
		systemctl hibernate
        ;;
    $lock)
		swaylock
        ;;
    $suspend)
		swaylock
        ;;
    $logout)
		hyprctl dispatch exit 0
        ;;
esac
