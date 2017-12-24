# This is a simple .bashrc file that i use on my own machine


export HISTSIZE=10000


#bind "set completion-ignore-case on"
shopt -s cdspell
shopt -s checkwinsize


# Command prompt
if [ $(whoami) = root ]; then
	export PS1="\[$(tput bold)\]\[$(tput bold)\]\[\033[38;5;1m\]@\h\[$(tput sgr0)\]\[$(tput bold)\]:\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;39m\]\w\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;33m\]\\$\[$(tput sgr0)\] "
else 
	export PS1="\[$(tput bold)\]\[\033[38;5;2m\]\u\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;1m\]@\h\[$(tput sgr0)\]\[$(tput bold)\]:\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;39m\]\w\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;33m\]\\$\[$(tput sgr0)\] "
fi


# ALIASES

# Swap capslock and escape (for vim)
alias caps='/usr/bin/setxkbmap -option "caps:swapescape"'


# ls command aliases
alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -lArth'


# cd command aliases
alias cd..='cd ..'
alias cd.2='cd ../..'
alias cd.3='cd ../../..'
alias cd.4='cd ../../../..'


# grep command aliases
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# date command aliases
alias d='date +%F'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%m-%d-%Y"'


# show open ports
alias ports='netstat -tulanp'

# iptables aliases
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist

# IP aliases
alias ip='curl ipecho.net/plain;echo'
alias ifconfig='sudo ifconfig'

# root aliases
alias ss='sudo su'
alias apt-get='sudo apt-get'
alias reboot='sudo reboot'


# Aliases for the vim configuration
alias dl_pathogen='mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim'
alias dl_autopairs='git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs'
alias dl_nerdtree='git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree'