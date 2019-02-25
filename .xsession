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
elif [ "$hn" = "Jonathas-Legacy" ]; then
	# Set touch pad options
	xinput set-prop "SYNA3602:00 0911:5288 Touchpad" "libinput Tapping Enabled" 1
	xinput set-prop "SYNA3602:00 0911:5288 Touchpad" "libinput Natural Scrolling Enabled" 0
fi

# Set background Wallpaper on X session
bgFile="$HOME/.xmonad/res/Wallpaper/current"
feh --bg-scale $bgFile
