#!/bin/bash
# User specific aliases

alias pingg="ping 8.8.8.8"

alias ghc-beta=$MYGHC"inplace/bin/ghc-stage2"
alias ghci-beta="ghc-beta --interactive"

alias ls="ls --color=auto"
alias ll="ls -l"
alias grep="grep --color=auto"
alias grepR="grep -rnI"
alias xclip="xclip -selection clipboard"

alias ssh="ssh -Cc aes256-ctr"
alias sshX="ssh -Y"
alias insecssh='ssh -o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=/dev/null"'
alias insecscp='scp -o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=/dev/null"'

alias emacsnw="emacsclient"

alias Minecraft="java -Xmx5G -Xms5G -jar /opt/Minecraft/Minecraft.jar"

alias dunst_reset='killall dunst;notify-send "Low Urgency" "Dunst restarted and ready to go" -u low;notify-send "Normal Urgency" "Dunst restarted and ready to go" -u normal;notify-send "Critical Urgency" "Dunst restarted and ready to go" -u critical'
