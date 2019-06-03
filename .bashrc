# set size of history
export HISTFILESIZE=
export HISTSIZE=

# vim mode
set -o vi

# set case-insensitive tab (edit /etc/inputrc if you want to use this on all users)
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

# colors in less
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
export LESS_TERMCAP_md=$(tput bold; tput setaf 6) # cyan
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4) # yellow on blue
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7) # white
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
export LESS_TERMCAP_ZN=$(tput ssubm)
export LESS_TERMCAP_ZV=$(tput rsubm)
export LESS_TERMCAP_ZO=$(tput ssupm)
export LESS_TERMCAP_ZW=$(tput rsupm)

# command prompt
if [ $USER = root ]; then
	export PS1="\[\033[38;5;3m\][\[$(tput sgr0)\]\[\033[38;5;9m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]\[\033[38;5;3m\]]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
else 
	export PS1="\[\033[38;5;3m\][\[$(tput sgr0)\]\[\033[38;5;2m\]\u\[$(tput sgr0)\]\[\033[38;5;9m\]@\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]\[\033[38;5;3m\]]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
fi

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# ALIASES

# copy to primary and secundary
alias xclip='xclip -selection "primary" -selection "secondary"'

# kill tmux session
alias tks='tmux kill-session -t'

# use nvim instead of vi
alias vim='nvim'
alias vi='nvim'

# open vifm with working directory and home
alias vifm='vifm `pwd` $HOME'

# ls command aliases
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -lh'
alias la='ls -lArth'

# cd command aliases
alias cd..='cd ..'

# security aliases
alias rm='rm --preserve-root'
alias chmod='chmod --preserve-root'
alias chown='chown --preserve-root'

# grep command aliases
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# SSH aliases
alias ssh_start='sudo /etc/init.d/ssh start'
alias ssh_stop='sudo /etc/init.d/ssh stop'

# root aliases
alias ss='sudo su'
alias pacman='sudo pacman'

# gcc alias
alias cflags='-Wall -Wextra -Werror -Wfloat-equal -Wundef -Wshadow -Wpointer-artith -Winit-self -DC99 -ICTester -std=c99 -g'
