### ALIASES ###
### PROMPT ###
bindkey -v
KEYTIMEOUT=1
pstart="%F{1}["
pname="%F{3}%n"
psep="%F{2}@"
pmachine="%F{6}%m"
ppwd="%F{4}%1~"
pend="%F{5}]"
pprompt="%F{7}%#"
PS1="$pstart$pname$psep$pmachine $ppwd$pend$pprompt "
function zle-line-init zle-keymap-select {
	echo -ne "${${KEYMAP/vicmd/\e[1 q}/(main|viins)/\e[5 q}"
}
preexec() {
	echo -ne '\e[1 q'
}
zle -N zle-line-init
zle -N zle-keymap-select
### BINDS ###
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^e' edit-command-line
