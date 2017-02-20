# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
if [ -f ~/.bash_functions ]; then
	. ~/.bash_functions
fi

#PS1 style
export PS1="[\[$(tput sgr0)\]\[\033[38;5;93m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;34m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;33m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]\n\[$(tput sgr0)\]\[\033[38;5;34m\]\\$>\[$(tput sgr0)\]"

#Path
export PATH="/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/home/Jonathas/.local/bin:/home/Jonathas/bin:/opt/bin"
#ClassPath for Java
export CLASSPATH=$CLASSPATH:/opt/Selenium/selenium-server-standalone-3.0.1.jar:/usr/lib/java/gtk.jar

# Usefull personal paths
export WORKSPACE=$HOME/Workspace
export MYGHC=$WORKSPACE/ghc/

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

#Enable Extended pattern matching in bash
shopt -s extglob
