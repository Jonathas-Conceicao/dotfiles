#!/bin/bash

# Turn off system bell
xset b off

# Setup the Monitors resulition
case $(eval cat /etc/hostname) in
	"lups03")
		xrandr --output HDMI-0  --auto --left-of DVI-I-0 --primary
		xrandr --output DVI-I-0 --auto --right-of HDMI-0 --noprimary
		;;
	"lups06")
		xrandr --output HDMI-1 --mode 1600x900  --right-of VGA-1 --primary
		xrandr --output VGA-1  --mode 1280x1024 --left-of HDMI-1 --noprimary
		;;
	"lups08")
		xrandr --output DVI-I-1 --auto --noprimary --right-of DVI-I-2
		xrandr --output DVI-I-2 --auto --primary
		;;
	"lups10")
		xrandr --output HDMI-1  --auto --right-of DVI-I-0 --primary
		xrandr --output DVI-I-1 --auto --left-of  HDMI-1  --noprimary
		;;
	"Jonathas-Fedora")
		# Vulkan variable to work with nvidia-xrun
		export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/nvidia_icd.x86_64.json
		;;
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
esac

# Set background Wallpaper on X session
bgFile="$HOME/.xmonad/res/Wallpaper/current"
feh --bg-scale $bgFile
