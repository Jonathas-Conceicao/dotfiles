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

# Pass $1 as the statement to find
function grepR() {
  if [[ "$#" -ne 1 ]]; then
    echo "Pass \$1 as the statement to find."
    return
  fi
  declare statement=$1
  declare FILECOLOR='\033[1;36m'
  declare DEFAULTCOLOR='\033[0m'
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
          echo -e "-----------------${FILECOLOR} $file ${DEFAULTCOLOR}-----------------"
          echo "${found}"
        fi
      fi
    fi
  done < $FILE
  if [ -f $FILE ]; then
    rm $FILE
  fi
}
