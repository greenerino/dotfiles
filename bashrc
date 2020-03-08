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
alias lsa='ls --color=auto -p -a'
alias cal='cal -3'
alias rm='rm -v'
alias mv="mv -v -i"
alias cp="cp -v -i"
alias grep="grep --color=auto"
alias df="df -H"

#prompt
#PS1='[\u@\h \W]\$ '
exitStatusColor()
{
  if [ "$?" == "0" ]; then
    echo -e '\e[0;36m'
  else
    echo -e '\e[0;32m'
  fi
}
CLEARCOLOR="\[\033[00m\]"
PS1='\[`exitStatusColor`\]'"[\t] [\u@\h \W]\$$CLEARCOLOR "

#list of packages in reverse size order
alias paclist="pacman -Qi | awk '/^Name/{name=\$3} /^Installed Size/{print \$4\$5 name}' | sort -h"

#nvm
source /usr/share/nvm/init-nvm.sh

#bashmarks
source ~/.local/bin/bashmarks.sh
