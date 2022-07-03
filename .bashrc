# set size of history
export HISTFILESIZE=
export HISTSIZE=
export HISTFILE=$HOME/.config/history

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

# sh into docker container
dsh() {
	docker exec -it $1 /bin/sh;
}

# stop virtualbox vm
vbstop() {
	vboxmanage controlvm $1 poweroff soft;
}

# load aliases
if [ -e $HOME/.config/aliases ]; then
	source $HOME/.config/aliases
fi
