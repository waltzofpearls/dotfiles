# .bashrc

# Source global definitions
[ -f /etc/bashrc ] && . /etc/bashrc

#
# https://github.com/git/git/tree/master/contrib/completion
#
[ -f ~/.git-completion.sh ] && . ~/.git-completion.sh
[ -f ~/.git-prompt.sh ] && . ~/.git-prompt.sh

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
# Paths
#
export GOPATH=$HOME/golang
export PATH=$PATH:$HOME/bin:$GOPATH/bin:$HOME/scripts

export PGUSER=beanuser

alias_gi() { grep -irn --color $1 .; }
alias_gr() { grep -rn --color $1 .; }
alias_say() { echo "$@" | espeak; }

#
# Aliases
alias d='cd /var/bean/'
alias u='cd /var/bean/ui/'
alias u0='cd /var/bean/ui/'
alias u1='cd /var/bean/ui1/'
alias u2='cd /var/bean/ui2/'
alias u3='cd /var/bean/ui3/'
alias u4='cd /var/bean/ui4/'
alias u5='cd /var/bean/ui5/'
alias a='cd /var/bean/api/'
alias a0='cd /var/bean/api/'
alias a1='cd /var/bean/api1/'
alias a2='cd /var/bean/api2/'
alias a3='cd /var/bean/api3/'
alias a4='cd /var/bean/api4/'
alias a5='cd /var/bean/api5/'
alias A='cd src/Bean/APIBundle/'
alias rc='source ~/.bash_profile'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias c='rm -rf app/cache/; sudo apachectl restart; redis-cli FLUSHALL'
alias cac='rm -rf app/cache/; app/console cache:clear; sudo apachectl restart'
alias ccc='for env in "dev" "test" "prod"; do app/console cache:clear --env="$env"; done;'
alias ll='ls -ahl'
alias phpu='date; time bin/phpunit -c app/'
alias phpuf='date; time bin/phpunit -c app/ --filter '
alias phpus='bin/phpunit -c app/ src/Bean/APIBundle/Tests/SqliteSchemaGeneration.php'
alias gi=alias_gi
alias gr=alias_gr
alias say=alias_say
