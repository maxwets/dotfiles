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

# set PATH so it incluedes scripts
export PATH="$PATH:$(du "$HOME/.scripts" | cut -f2 | tr '\n' ':' | sed 's/:*$//g')"


# set variables
export EDITOR="vim"
export PAGER="less"
export BROWSER="firefox"
export TERMINAL="st"
export TERM="st"

# swap ESC and CAPS keys
setxkbmap -option caps:swapescape 

# get random wallpapers
feh --randomize --bg-fill --fullscreen -D 1800.0 ~/Pictures/wallpapers/* &
