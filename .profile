
export GOPATH=$HOME/Mjolnir/Dev/Golang/default
export PATH=$PATH:$GOPATH/bin

#
# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
#
COLOR_OFF='\e[0m'  # Text Reset
BLACK='\e[0;90m'   # Black
RED='\e[0;91m'     # Red
GREEN='\e[0;92m'   # Green
YELLOW='\e[0;93m'  # Yellow
BLUE='\e[0;94m'    # Blue
PURPLE='\e[0;95m'  # Purple
CYAN='\e[0;96m'    # Cyan
WHITE='\e[0;97m'   # White

#
# MacOS Default PS1
# PS1="\h:\W \u\$ "
#
export PS1="\h:\[$YELLOW\]\W\[\033[m\]\[$CYAN\]\$(__git_ps1) \[$WHITE\]\u\$ "

alias ls="ls -G"
alias ll="ls -ahl"
alias gp="grep -in --color $1 ."
alias gr="grep -irn --color $1 ."
alias d1="cd $HOME/Mjolnir/Dev"
alias d2="cd $HOME/Dropbox/Dev"

#
# https://github.com/git/git/tree/master/contrib/completion
#
source $HOME/.git-completion.sh
source $HOME/.git-prompt.sh
