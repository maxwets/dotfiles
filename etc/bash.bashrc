#!/usr/bin/env bash

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

export HISTSIZE=65535
export HISTFILESIZE=65535
export LESSHISTFILE="-"
export HISTCONTROL=ignoredups

if [[ -x /usr/bin/dircolors ]]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)";
	alias ls='ls --color=auto';
	alias grep='grep --color=auto';
fi

[[ -e "$HOME/.config/shell/aliasrc" ]] && source "$HOME/.config/shell/aliasrc";
[[ -e "$HOME/.config/shell/proxyrc" ]] && source "$HOME/.config/shell/proxyrc";
[[ -e "$HOME/.config/shell/vpnrc" ]]   && source "$HOME/.config/shell/vpnrc";

if [[ $EUID == 0 ]]; then
	export PS1='\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ \033[01;33m\](\033[01;33m\]$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)) \[\033[00m\]\\$ ';
else
	export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ \033[01;33m\](\033[01;33m\]$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)) \[\033[00m\]\\$ ';
fi

