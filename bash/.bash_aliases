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
alias rm='rm -I --one-file-system'
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
