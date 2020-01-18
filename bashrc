#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#go
export GOPATH=/home/justin/Documents/Projects/go
export PATH=$PATH:$GOPATH/bin

#fzf
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

#general aliases
alias ls='ls --color=auto -p'
alias cal='cal -3'
alias rm='rm -v'
alias grep="grep --color=auto"
alias df="df -H"

PS1='[\u@\h \W]\$ '

#list of packages in reverse size order
alias paclist="pacman -Qi | awk '/^Name/{name=\$3} /^Installed Size/{print \$4\$5 name}' | sort -h"

#nvm
source /usr/share/nvm/init-nvm.sh

#bashmarks
source ~/.local/bin/bashmarks.sh
