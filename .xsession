#!/bin/bash

# Turn off system bell
xset b off

# Setup the Monitors resulition
case $(eval cat /etc/hostname) in
	"Jonathas-Legacy")
		# Set touch pad options
		xinput set-prop "SYNA3602:00 0911:5288 Touchpad" "libinput Tapping Enabled" 1
		xinput set-prop "SYNA3602:00 0911:5288 Touchpad" "libinput Natural Scrolling Enabled" 0
		export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/intel_icd.x86_64.json
		;;
	"Jonathas-ArchG3")
		xinput set-prop "DELL0949:00 04F3:30CB Touchpad" "libinput Tapping Enabled" 1
		xinput set-prop "DELL0949:00 04F3:30CB Touchpad" "libinput Natural Scrolling Enabled" 0
		export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/nvidia_icd.json
		;;
	"Dalaran")
		xrandr --output eDP-1  --auto --primary
		# xrandr --output eDP-1  --mode 1280x720 --left-of HDMI-1 --noprimary
		# xrandr --output HDMI-1 --auto          --right-of eDP-1 --primary
		;;
esac

# Set background Wallpaper on X session
bgFile="$HOME/.xmonad/res/XMonadLogo.jpg"
feh --bg-scale $bgFile
