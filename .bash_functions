#!/bin/bash
# User specific aliases functions

function mless {
	if (($(wc -l $1 2> /dev/null | awk '{print $1;}') > $(($LINES - 2)))); then
		less $1
	else
		cat $1
	fi
}

function sizeofthis {
	du -h $1 | tail -n 1
}

function countfiles {
	ls -A $1 | wc -l
}

function clipToFile {
	xclip -o -selection clipboard > $1
}

function xrdbreload {
	xrdb -I$HOME ~/.Xresources
}

GITKEEP_MESSAGE="Dummy file to keep folder."
function dummy {
	echo -e $GITKEEP_MESSAGE >> $1/.gitkeep
}

function nvidia_on {
	tee /proc/acpi/bbswitch <<<ON

	modprobe nvidia
	modprobe nvidia_uvm
	modprobe nvidia_modeset
	modprobe nvidia_drm modeset=1

	systemctl restart lightdm
}

function nvidia_off {
	tee /proc/acpi/bbswitch <<<OFF

	modprobe nvidia_drm
	modprobe nvidia_modeset
	modprobe nvidia_uvm
	modprobe nvidia

	systemctl restart lightdm
}

# Transfer command from https://transfer.sh/
transfer() {
    wget -t 1 -qO - --method=PUT --body-file="$1" --header="Content-Type: $(file -b --mime-type "$1")" https://transfer.sh/$(basename "$1");
    echo
}
alias transfer=transfer

#   This file echoes a bunch of color codes to the 
#   terminal to demonstrate what's available.  Each 
#   line is the color code of one forground color,
#   out of 17 (default + 16 escapes), followed by a 
#   test use of that color on all nine background 
#   colors (default + 8 escapes).
#
#   Author: Giles Orr
#   URL: http://gilesorr.com/bashprompt/howto/c350.html
#   License: GNU Free Documentation License, Version 1.1 or any later version published by the Free Software Foundation;
#            http://gilesorr.com/bashprompt/howto/a1004.html
function colors() {
	T='gYw'   # The test text

	echo -e "\n                 40m     41m     42m     43m     44m     45m     46m     47m";

	for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
						 '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
						 '  36m' '1;36m' '  37m' '1;37m';

	do FG=${FGs// /}
		 echo -en " $FGs \033[$FG  $T  "
		 for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
		 do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
		 done
		 echo;
	done
	echo

	echo -e "\e[0mCOLOR_NC (No color)"
	echo -e "\e[1;37mCOLOR_WHITE\t\e[0;30mCOLOR_BLACK"
	echo -e "\e[0;34mCOLOR_BLUE\t\e[1;34mCOLOR_LIGHT_BLUE"
	echo -e "\e[0;32mCOLOR_GREEN\t\e[1;32mCOLOR_LIGHT_GREEN"
	echo -e "\e[0;36mCOLOR_CYAN\t\e[1;36mCOLOR_LIGHT_CYAN"
	echo -e "\e[0;31mCOLOR_RED\t\e[1;31mCOLOR_LIGHT_RED"
	echo -e "\e[0;35mCOLOR_PURPLE\t\e[1;35mCOLOR_LIGHT_PURPLE"
	echo -e "\e[0;33mCOLOR_YELLOW\t\e[1;33mCOLOR_LIGHT_YELLOW"
	echo -e "\e[1;30mCOLOR_GRAY\t\e[0;37mCOLOR_LIGHT_GRAY"
}
