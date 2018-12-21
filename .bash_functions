# User specific aliases functions

function sizeofthis {
	du -h $1 | tail -n 1
}

function countfiles {
	ls -iq $1* | wc -l
}

function clipToFile {
	xclip -o -selection clipboard > $1
}

GITKEEP_MESSAGE="Dummy file to keep folder."
function dummy {
	echo -e $GITKEEP_MESSAGE >> $1/.gitkeep
}

# Pass $1 as the statement to find
function grepR() {
	if [[ "$#" -ne 1 ]]; then
		echo "Pass \$1 as the statement to find."
		return
	fi
	declare statement=$1
	declare FILE="/tmp/LIST_OF_FILES.txt"
	ls -p -R |grep -v '/$' > $FILE

	path=.
	while read line; do
		if [ ! -z "$line" ]; then
			if [ "${line: -1}" == ":" ]; then
				path=${line:0:-1}
			else
				file="$path/$line"
				found="$(grep -n -I --color=always $statement $file)"
				if [ ! -z "$found" ]; then
					echo -e "-----------------${LCYAN} $file ${DEFAULT}-----------------"
					echo "${found}"
				fi
			fi
		fi
	done < $FILE
	if [ -f $FILE ]; then
		rm $FILE
	fi
}

function colors() {
	# for color in "${COLORLIST[@]}"; do
	for (( i = 0; i < ${#COLORLIST[@]}; i++ )); do
		echo -e "${COLORLIST[$i]}${1:-"This is"}${DEFAULT} -- ${COLORLISTNAME[$i]}"
	done
}

function transparencySwap() {
	state=$(dconf read /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/use-transparent-background)
	if [[ ${state} == "true" ]]; then
		dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/use-transparent-background false
	else
		dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/use-transparent-background true
	fi
}
