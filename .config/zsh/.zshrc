autoload -U colors && colors
autoload -Uz compinit && compinit
autoload -Uz vcs_info

zmodload zsh/complist

setopt autocd
setopt correct
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt interactive_comments
setopt interactivecomments
setopt magicequalsubst
setopt nonomatch
setopt notify
setopt numericglobsort
setopt prompt_subst

precmd() { vcs_info }
precmd_functions+=( precmd_vcs_info )
preexec() { echo -ne '\e[5 q' ;}

zstyle ':vcs_info:git:*' formats '%b'
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

export LESS_TERMCAP_md=$(tput bold; tput setaf 1)
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 4)
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 16)
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
export LESS_TERMCAP_ZN=$(tput ssubm)
export LESS_TERMCAP_ZV=$(tput rsubm)
export LESS_TERMCAP_ZO=$(tput ssupm)
export LESS_TERMCAP_ZW=$(tput rsupm)

export PS1='%{%(#~$fg[red]~$fg[blue])%}%~ %(?.%F{green}.%F{red})%#%f '
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export PROMPT_EOL_MARK=""
export RPROMPT='${vcs_info_msg_0_}'
export TERM="xterm-256color"
export HISTSIZE=65535
export SAVEHIST=65535
export HISTFILE="$HOME/.cache/history"
export WORDCHARS=${WORDCHARS//\/}
export TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S\ncpu\t%P'

for f in $(find ~/.config/shell/ -type f); do source "$f" 2&> /dev/null; done
for f in $(find /usr/share/zsh-*/ -type f -name '*.zsh'); do source "$f" 2&> /dev/null; done

bindkey -v
bindkey "^R" history-incremental-search-backward
bindkey "^H" backward-delete-char
bindkey "^?" backward-delete-char
export KEYTIMEOUT=1


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
