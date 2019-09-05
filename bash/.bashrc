#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    eval "$(<~/.ssh-agent-thing)" > /dev/null
fi

## ls
alias ls='ls -hF --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'
## safety
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -Iv --one-file-system'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
## 
alias :q=' exit'
alias :Q=' exit'
alias :x=' exit'
alias cd..='cd ..'
## Useful
alias hd='hexdump -C'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias mkdir='mkdir -p -v'
alias diff='colordiff'
alias df='df -h'
alias du='du -c -h'
alias more='less'


# Load bash completion
source /usr/share/bash-completion/bash_completion
PS1='[\u@\h \W]\$ '

export EDITOR=vim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
