# .bashrc

# Source global definitions
if [ -f /etc/*bashrc ]; then
	. /etc/*bashrc
fi

# Enable Extended pattern matching in bash
shopt -s extglob

# User specific global variables
if [ -f ~/.bash_variables ]; then
	. ~/.bash_variables
fi

# User specific aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# User specific functions
if [ -f ~/.bash_functions ]; then
	. ~/.bash_functions
fi

# enable programmable completion features
if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
