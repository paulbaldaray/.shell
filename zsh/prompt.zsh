KEYTIMEOUT=1
pstart="%F{9}["
pname="%F{11}%n"
psep="%F{10}@"
pmachine="%F{14}%m"
ppwd="%F{12}%1~"
pend="%F{13}]"
pprompt="%F{15}%#"
PROMPT="$pstart$pname$psep$pmachine $ppwd$pend\$(print_vcs)\$NEWLINE$pprompt "
function zle-line-init zle-keymap-select {
	echo -ne "${${KEYMAP/vicmd/\e[1 q}/(main|viins)/\e[5 q}"
}
preexec() {
	echo -ne '\e[1 q'
}

NEWLINE=""
function NEWLINE-toggle() {
	[ -z "$NEWLINE" ] && NEWLINE=$'\n' || NEWLINE=""
	zle reset-prompt
}
zle -N NEWLINE-toggle

SHOWGIT=""
function SHOWGIT-toggle() {
	if [ -z "$SHOWGIT" ]; then
		SHOWGIT="true"
		zstyle ':vcs_info:git:*' check-for-changes false
		RPROMPT="GIT OFF"
		PROMPT="$pstart$pname$psep$pmachine $ppwd$pend\$NEWLINE$pprompt "
	else
		SHOWGIT=""
		zstyle ':vcs_info:git:*' check-for-changes true
		precmd_vcs_info
		RPROMPT="GIT ON"
		PROMPT="$pstart$pname$psep$pmachine $ppwd$pend\$(print_vcs)\$NEWLINE$pprompt "
	fi
	zle reset-prompt
}
remove_RPROMPT() { RPROMPT="" }
precmd_functions+=( remove_RPROMPT )
zle -N SHOWGIT-toggle

zle -N zle-line-init
zle -N zle-keymap-select
