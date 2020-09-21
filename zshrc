### SOURCE ###
source ~/.shell/zsh/git.zsh
source ~/.shell/zsh/prompt.zsh
source ~/.shell/zsh/alias.zsh
### BINDS ###
bindkey -v
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^e' edit-command-line
bindkey '^[n' NEWLINE-toggle
bindkey '^[g' SHOWGIT-toggle
