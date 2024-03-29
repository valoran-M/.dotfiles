#!/bin/sh
set -ex

monitors=$(hyprctl monitors -j)

monitor1_name=$(echo $monitors | jq -r '.[0].name')
monitor1_width=$(echo $monitors | jq -r '.[0].width')
monitor1_height=$(echo $monitors | jq -r '.[0].height')
monitor1_refresh=$(echo $monitors | jq -r '.[0].refreshRate')
monitor1=${monitor1_name},${monitor1_width}x${monitor1_height}@60${monitor1_refresh}

monitor2_name=$(echo $monitors | jq -r '.[1].name')
monitor2_width=$(echo $monitors | jq -r '.[1].width')
monitor2_height=$(echo $monitors | jq -r '.[1].height')
monitor2_refresh=$(echo $monitors | jq -r '.[1].refreshRate')
monitor2=${monitor2_name},${monitor2_width}x${monitor2_height}@${monitor2_refresh}

# Options
clone=' '
screen_left='󰍹 󰌢 '
screen_right='󰌢 󰍹 '
laptop='󰌢 '
hdmi='󰍹 '


DIR="~/.config/rofi/monitor"

# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
		-theme ${DIR}/config.rasi
}

run_rofi() {
	echo -e "$clone\n$hdmi\n$screen_right\n$laptop\n$screen_left" | rofi_cmd
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $clone)
        hyprctl keyword monitor ${monitor2},0x0,1,mirror,${monitor1_name} &&
        killall waybar
        waybar & disown
        ;;
    $screen_left)
        hyprctl keyword monitor ${monitor1},${monitor2_width}x0,1 &&
        hyprctl keyword monitor ${monitor2},0x0,1 &&
        killall waybar
        waybar & disown
        ;;
    $screen_right)
        hyprctl keyword monitor ${monitor1},0x0,1 &&
        hyprctl keyword monitor ${monitor2},${monitor1_width}x0,1 &&
        killall waybar
        waybar & disown
        ;;
    $laptop)
        hyprctl keyword monitor ${monitor2_name},disable &&
        killall waybar
        waybar & disown
        ;;
    $hdmi)
        hyprctl keyword monitor ${monitor1_name},disable &&
        killall waybar
        waybar & disown
        ;;
esac
