### ALIASES ###
### SOURCE ###
ZDIR="$DOTDIR/zsh"
source "$ZDIR/git.zsh"
### PROMPT ###
KEYTIMEOUT=1
pstart="%F{9}["
pname="%F{11}%n"
psep="%F{10}@"
pmachine="%F{14}%m"
ppwd="%F{12}%1~"
pend="%F{13}]"
pprompt="%F{15}%#"
PROMPT="$pstart$pname$psep$pmachine $ppwd$pend\$(print_vcs)$pprompt "
function zle-line-init zle-keymap-select {
	echo -ne "${${KEYMAP/vicmd/\e[1 q}/(main|viins)/\e[5 q}"
}
preexec() {
	echo -ne '\e[1 q'
}
zle -N zle-line-init
zle -N zle-keymap-select
### BINDS ###
bindkey -v
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^e' edit-command-line
