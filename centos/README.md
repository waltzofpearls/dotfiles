```
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O $HOME/.git-prompt.sh
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O $HOME/.git-completion.sh

tee -a $HOME/.bash_profile < bash_profile
tee -a $HOME/.bashrc < bashrc

source $HOME/.bash_profile
```
