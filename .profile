
export GOPATH=$HOME/Mjolnir/Dev/Golang/default
export PYPATH=$HOME/Library/Python/3.4
export PATH=$PATH:$PYPATH/bin:$GOPATH/bin
export NVM_DIR=$HOME/.nvm

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

#
# Aliases
#
function g { grep -irn --color "$1" .; }
alias ls='ls -G'
alias ll='ls -ahl'
alias d='cd $HOME/Mjolnir/Dev'
alias d2='cd $HOME/Dropbox/Dev'
alias rc='. ~/.profile'
alias gst='git status'
alias gad='git add'
alias gap='git add -p'
alias gpl='git pull'
alias gph='git push'
alias gdf='git diff'
alias gds='git diff --staged'
alias gci='git commit'
alias gco='git checkout'
alias gbr='git branch'
alias glg='git log'
alias glp='git log --pretty=format:"%h %s" --graph'
alias glt='git log -1 HEAD'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

#
# https://github.com/git/git/tree/master/contrib/completion
#
[ -s "$HOME/.git-completion.sh" ] && . "$HOME/.git-completion.sh"
[ -s "$HOME/.git-prompt.sh" ] && . "$HOME/.git-prompt.sh"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
