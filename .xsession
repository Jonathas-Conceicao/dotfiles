#! /bin/bash

# Turn off system bell if on display
if [ -n "$DISPLAY" ]; then
	xset b off
fi

# Setup the Monitors resulition
hn=$(eval cat /etc/hostname)
if [ "$hn" = "lups06" ]; then
	xrandr --output HDMI-1 --mode 1600x900  --primary --right-of VGA-1
	xrandr --output VGA-1  --mode 1280x1024 --left-of HDMI-1 
elif [ "$hn" = "lups10" ]; then
	xrandr --output DVI-I-1 --auto --left-of HDMI-1
	xrandr --output HDMI-1 --auto --primary
fi

# Set background Wallpaper on X session
bgFile="$HOME/.xmonad/res/Wallpaper/current"
feh --bg-scale $bgFile
