PROMPT='%F{cyan}%n%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
PROMPT_EOL_MARK=""
WORDCHARS=${WORDCHARS//\/}
TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S\ncpu\t%P'
autoload -Uz vcs_info
setopt PROMPT_SUBST
bindkey '^[z' autosuggest-accept

HISTSIZE=99999
SAVEHIST=99999
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
alias history="history 0"

setopt autocd
setopt correct
setopt interactivecomments
setopt magicequalsubst
setopt nonomatch
setopt notify
setopt numericglobsort
setopt promptsubst

[ -e $HOME/.config/shell/aliasrc ] && source $HOME/.config/shell/aliasrc
[ -e $HOME/.config/shell/proxyrc ] && source $HOME/.config/shell/proxy
[ -e $HOME/.config/zsh/autosuggestions.zsh ] && source $HOME/.config/zsh/autosuggestions.zsh

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

bindkey -v
autoload -U compinit
zstyle ':vcs_info:git:*' formats '%b '
zmodload zsh/complist
zstyle ':completion:*' menu select
compinit
_comp_options+=(globdots)
precmd() { vcs_info }
autoload -Uz compinit
compinit -d ~/.cache/zcompdump
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' rehash true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

dsh() { docker exec -it $1 /bin/sh; }
vbstop() { vboxmanage controlvm $1 poweroff soft; }
