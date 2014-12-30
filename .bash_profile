
#
# https://github.com/git/git/tree/master/contrib/completion
#
source $HOME/.git-completion.sh
source $HOME/.git-prompt.sh

#
# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
#
COLOR_OFF='\e[0m'  # Text Reset
BLACK='\e[0;30m'   # Black
RED='\e[0;31m'     # Red
GREEN='\e[0;32m'   # Green
YELLOW='\e[0;33m'  # Yellow
BLUE='\e[0;34m'    # Blue
PURPLE='\e[0;35m'  # Purple
CYAN='\e[0;36m'    # Cyan
WHITE='\e[0;37m'   # White

#
# CentOS Default PS1
# PS1="[\u@\h \W]\$ "
#
export PS1="\[$WHITE\][\u@\h \[$YELLOW\]\W\[\033[m\]\[$CYAN\]\$(__git_ps1)\[$WHITE\]]\$ "
