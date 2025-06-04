#!/bin/sh

[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"

export LC_ALL="en_US.UTF8"

export TERM="xterm-256color"
export TERMINAL="xterm-256color"
export EDITOR="nvim"
export PAGER="less"
export READER="zathura"
export BROWSER="firefox"
export VIDEO="mpv"
export IMAGE="sxiv"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

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
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export WGETRC="$XDG_CONFIG_HOME"/wget/wgetrc
export WORKON_HOME="$XDG_DATA_HOME"/virtualenvs
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
