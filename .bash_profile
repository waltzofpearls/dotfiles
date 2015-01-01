
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
# CentOS Default PS1
# PS1="[\u@\h \W]\$ "
#
export PS1="\[$WHITE\][\u@\h \[$YELLOW\]\W\[\033[m\]\[$CYAN\]\$(__git_ps1)\[$WHITE\]]\$ "

#
# https://github.com/git/git/tree/master/contrib/completion
#
source $HOME/.git-completion.sh
source $HOME/.git-prompt.sh
