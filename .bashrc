# This is a simple .bashrc file that i use on my own machine

# Set size of history
export HISTSIZE=10000

# Set case-insensitive tab (edit /etc/inputrc if you want to use this on all users)
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

# Command prompt
if [ $(whoami) = root ]; then
	export PS1="\[\033[38;5;14m\][\t]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;1m\]\u\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;1m\]@\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;1m\]\h\[$(tput sgr0)\]\[$(tput bold)\]:\[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;6m\]\\$\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
else 
	export PS1="\[\033[38;5;14m\][\t]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;2m\]\u\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;1m\]@\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;1m\]\h\[$(tput sgr0)\]\[$(tput bold)\]:\[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;6m\]\\$\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
fi


# For tmux usage
if [[ ! $TERM =~ screen ]]; then
    exec tmux
fi
alias tks='tmux kill-session -t'

# ALIASES

# ls command aliases
alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -lArth'


# cd command aliases
alias cd..='cd ..'
alias cd.2='cd ../..'
alias cd.3='cd ../../..'
alias cd.4='cd ../../../..'

# Security aliases
alias rm='rm --preserve-root'
alias chmod='chmod --preserve-root'
alias chown='chown --preserve-root'

# grep command aliases
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'


# date command aliases
alias d='date +%F'
alias now='date +"%T"'
alias nowtime='now'
alias nowdate='date +"%m-%d-%Y"'

# swap esc and caps lock (for wim usage)
alias esc='/usr/bin/setxkbmap -option "caps:swapescape"'
alias vim='esc;vim'

# show open ports
alias ports='netstat -tulanp'

# iptables aliases
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall='iptlist'

# IP aliases
alias ip='curl ipecho.net/plain;echo'
alias ifconfig='sudo ifconfig'

# Networking aliases
alias ssh_start='sudo /etc/init.d/ssh start'
alias ssh_stop='sudo /etc/init.d/ssh stop'

# root aliases
alias ss='sudo su'
alias apt-get='sudo apt-get'
alias apt='sudo apt'
alias reboot='sudo reboot'



# Totem alias
alias ttf='totem --fullscreen'
# Evince alias
alias evince='evince 2> /dev/null'

# Aliases for the vim configuration
alias getvimconfig='dl_pathogen;dl_autopairs;dl_nerdtree;dl_ctrlp'
alias dl_pathogen='mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim'
alias dl_autopairs='git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs'
alias dl_nerdtree='git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree'
alias dl_ctrlp='git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim'
