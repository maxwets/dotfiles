#!/bin/sh

export TERM="st"
export TERMINAL="st"
export EDITOR="nvim"
export PAGER="less"
export READER="zathura"
export BROWSER="firefox"
export VIDEO="mpv"
export IMAGE="sxiv"

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

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export ANSIBLE_CONFIG="$XDG_CONFIG_HOME"/ansible/ansible.cfg
export AZURE_CONFIG_DIR="$XDG_CONFIG_HOME"/azure
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GOPATH="$XDG_DATA_HOME"/go
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export HISTFILE="$XDG_DATA_HOME"/history
export INPUTRC="$XDG_CONFIG_HOME"/shell/inputrc
export KDEHOME="$XDG_CONFIG_HOME"/kde
export LESSHISTFILE="-"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/password-store
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export WORKON_HOME="$XDG_DATA_HOME"/virtualenvs
export WGETRC="$XDG_CONFIG_HOME"/wget/wgetrc
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"
[[ $XDG_SESSION_TYPE == "x11" ]] && setxkbmap -option "caps:swapescape"

