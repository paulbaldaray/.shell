### ALIASES ###
### SOURCE ###
ZDIR="$DOTDIR/zsh"
source "$ZDIR/git.zsh"
source "$ZDIR/prompt.zsh"
### BINDS ###
bindkey -v
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^e' edit-command-line
bindkey '^[n' NEWLINE-toggle
