export HISTFILESIZE=
export HISTSIZE=

set -o vi

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

[ -e $HOME/.config/shell/aliasrc ] && source $HOME/.config/shell/aliasrc
[ -e $HOME/.config/shell/proxyrc ] && source $HOME/.config/shell/proxy

if [ $USER = root ]; then
	export PS1="\[\033[38;5;3m\][\[$(tput sgr0)\]\[\033[38;5;9m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]\[\033[38;5;3m\]]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
else 
	export PS1="\[\033[38;5;3m\][\[$(tput sgr0)\]\[\033[38;5;2m\]\u\[$(tput sgr0)\]\[\033[38;5;9m\]@\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]\[\033[38;5;3m\]]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
fi

dsh() { docker exec -it $1 /bin/sh; }
vbstop() { vboxmanage controlvm $1 poweroff soft; }

