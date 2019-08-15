# set env variables
export EDITOR="nvim"
export TERM="st"
export PAGER="less"
export READER="zathura"
export BROWSER="firefox"
export VIDEO="mpv"
export IMAGE="sxiv"
export TERMINAL="st"
export GOPATH="~/go"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# start graphical environment
[ "$(tty)" = "/dev/tty1" ] && pgrep -xv i3 > /dev/null && exec startx
