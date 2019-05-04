# Set size of history
export HISTSIZE=10000

# Environment variables
export EDITOR=vim

# Set case-insensitive tab (edit /etc/inputrc if you want to use this on all users)
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

# Command prompt
if [ $USER = root ]; then
	export PS1="\[\e[31m\]\u\[\e[m\]\[\e[31m\]@\[\e[m\]\[\e[31m\]\h\[\e[m\]\[\e[36m\]:\[\e[m\]\[\e[36m\]\w\[\e[m\]\[\e[36m\]\\$\[\e[m\] "
else 
	export PS1="\[\e[32m\]\u\[\e[m\]\[\e[31m\]@\[\e[m\]\[\e[31m\]\h\[\e[m\]\[\e[36m\]:\[\e[m\]\[\e[36m\]\w\[\e[m\]\[\e[36m\]\\$\[\e[m\] "
fi

# Adds ~/.scripts and all subdirectories to $PATH
export PATH="$PATH:$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# load shortcuts
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"

# ALIASES

# ls command aliases
alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -lArth'

# cd command aliases
alias cd..='cd ..'

# Security aliases
alias rm='rm --preserve-root'
alias chmod='chmod --preserve-root'
alias chown='chown --preserve-root'

# grep command aliases
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# show open ports
alias ports='netstat -tulanp'

# iptables aliases
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall='iptlist'

# IP aliases
alias ifconfig='sudo ifconfig'

# SSH aliases
alias ssh_start='sudo /etc/init.d/ssh start'
alias ssh_stop='sudo /etc/init.d/ssh stop'

# root aliases
alias ss='sudo su'
alias apt-get='sudo apt-get'
alias apt='sudo apt'
alias reboot='sudo reboot'

# gcc alias
alias cflags='-Wall -Wextra -Werror -Wfloat-equal -Wundef -Wshadow -Wpointer-artith -Winit-self -DC99 -ICTester -std=c99 -g'
