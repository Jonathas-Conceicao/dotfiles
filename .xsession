#! /bin/bash
# Setup the Monitors resulition
xrandr --output HDMI-1 --mode 1600x900  --primary --right-of VGA-1
xrandr --output VGA-1  --mode 1280x1024 --left-of HDMI-1 

