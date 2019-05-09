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
export BROWSER="firefox"
export TERMINAL="st"
export TERM="st"

# man nice colors
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '')"="${a%_}"
export LESS_TERMCAP_md="$(printf '%b' '')"="${a%_}"
export LESS_TERMCAP_me="$(printf '%b' '')"="${a%_}"
export LESS_TERMCAP_so="$(printf '%b' '')"="${a%_}"
export LESS_TERMCAP_se="$(printf '%b' '')"="${a%_}"
export LESS_TERMCAP_us="$(printf '%b' '')"="${a%_}"
export LESS_TERMCAP_ue="$(printf '%b' '')"="${a%_}"

# swap ESC and CAPS keys
setxkbmap -option caps:swapescape 

# For getting a random wallpaper for each login
feh --randomize --bg-fill ~/Pictures/wallpapers/*
