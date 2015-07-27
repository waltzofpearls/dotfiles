#!/bin/bash

#
# Install homebrew
#
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install wget
brew install autoenv

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O $HOME/.git-prompt.sh
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O $HOME/.git-completion.sh

tee -a $HOME/.profile < .profile
tee -a $HOME/.bashrc < .bashrc
source $HOME/.profile