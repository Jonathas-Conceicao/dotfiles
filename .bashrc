# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#PS1 style
export PS1="[\[$(tput sgr0)\]\[\033[38;5;93m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;34m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;33m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]\n\[$(tput sgr0)\]\[\033[38;5;34m\]\\$>\[$(tput sgr0)\]"

#Path
export PATH="/bin:/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/home/Jonathas/.local/bin:/home/jonathas/.local/bin:/home/Jonathas/.local/bin:/opt/bin"

#ClassPath for Java
export CLASSPATH=.:/opt/ClassPath/*

# Usefull personal paths
export WORKSPACE=$HOME/Workspace
export MYGHC=$WORKSPACE/ghc/

# User specific aliases and functions
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
if [ -f ~/.bash_functions ]; then
	. ~/.bash_functions
fi

# enable programmable completion features
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

#Enable Extended pattern matching in bash
shopt -s extglob
