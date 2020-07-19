# Git information for prompt
autoload -Uz compinit && compinit
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' formats '%b %c %u'
function print_vcs() {
	msg=($(echo ${vcs_info_msg_0_}))
	num=${#msg[@]}
	[ "$num" -eq 0 ] && return
	echo -n " %F{7}(%F{9}${msg[1]}%F{7})"
	[ "$num" -eq 1 ] && return
	echo -n "%F{7}[%F{11}"
	for arg in ${msg[@]:1}; do
		echo -n $arg
	done
	echo "%F{7}]"
}
