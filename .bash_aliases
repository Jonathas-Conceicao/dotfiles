# User specific aliases

alias pingg="ping 8.8.8.8"

alias ghc-beta=$MYGHC"inplace/bin/ghc-stage2"
alias ghci-beta="ghc-beta --interactive"

alias ls="ls --color=auto"
alias ll="ls -l"
#alias grep="grep -n --colour"

alias buscadorGHC="grepR"
alias mangaReader="mcomix"

alias Minecraft="primusrun java -Xmx5G -Xms5G -jar /opt/Minecraft/Minecraft.jar"
alias MineClick="MINE_WINDOW=$(xdotool search --onlyvisible --name Minecraft);while true; do xdotool click --window $MINE_WINDOW --repeat 5 --delay 400 3; done"