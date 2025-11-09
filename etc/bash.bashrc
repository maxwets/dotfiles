#!/usr/bin/env bash

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

export HISTSIZE=65535
export HISTFILESIZE=65535
export LESSHISTFILE="-"
export HISTCONTROL=ignoredups

if [[ $EUID == 0 ]]; then
	export PS1='\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ \033[01;33m\](\033[01;33m\]$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)) \[\033[00m\]\\$ ';
else
	export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ \033[01;33m\](\033[01;33m\]$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)) \[\033[00m\]\\$ ';
fi

set -o vi

alias \
	ls='ls --color=auto' \
	grep='grep --color=auto' \
	diff='diff --color=auto' \
	ip='ip -color=auto';

alias \
	cd..='cd ..' \
	chmod='chmod --preserve-root' \
	chown='chown --preserve-root' \
	cp='cp -iv' \
	la='ls -lArth' \
	mkdir='mkdir -pv' \
	mv='mv -iv' \
	rm='rm --preserve-root' \
	rm='rm -vI';
