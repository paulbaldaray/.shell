##### Command Prompt #####
RCLR="\[\e[31m\]"
YCLR="\[\e[33m\]"
GCLR="\[\e[32m\]"
LCLR="\[\e[36m\]"
BCLR="\[\e[34m\]"
PCLR="\[\e[35m\]"
GRCLR="\[\e[90m\]"
WCLR="\[\e[37m\]"
export PS1="${RCLR}[${YCLR}\u${GCLR}@${LCLR}\h ${BCLR}\W${PCLR}]${GRCLR}$ ${WCLR}"
export CLICOLOR=1
export LSCOLORS="gxfxcxdxbxegedabagacad"
set -o vi
