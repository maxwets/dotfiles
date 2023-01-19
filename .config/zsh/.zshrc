autoload -U colors && colors
stty stop undef
export PROMPT="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
export PROMPT_EOL_MARK=""

export HISTSIZE=999999
export SAVEHIST=999999
export HISTFILE="$HOME/.cache/history"
export WORDCHARS=${WORDCHARS//\/}
export TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S\ncpu\t%P'
alias history="history 0"

setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt PROMPT_SUBST
setopt interactive_comments
setopt autocd
setopt correct
setopt interactivecomments
setopt magicequalsubst
setopt nonomatch
setopt notify
setopt numericglobsort
setopt promptsubst

for f in $(find ~/.config/shell/ -type f); do source "$f"; done
for f in $(find /usr/share/zsh/plugins/ -type f -name '*.zsh'); do source "$f"; done

bindkey -v
export KEYTIMEOUT=1
autoload -Uz vcs_info
bindkey "^?" backward-delete-char
autoload -U compinit
zstyle ':vcs_info:git:*' formats '%b '
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}+l:|?=** r:|?=**'
zmodload zsh/complist

function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;
        viins|main) echo -ne '\e[5 q';;
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q'
preexec() { echo -ne '\e[5 q' ;}
