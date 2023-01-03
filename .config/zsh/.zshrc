autoload -U colors && colors
stty stop undef
export PROMPT='%F{cyan}%n%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
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

[ -f $HOME/.config/shell/aliasrc ] && source $HOME/.config/shell/aliasrc
[ -f $HOME/.config/shell/proxyrc ] && source $HOME/.config/shell/proxyrc

[[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh;
[[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && \
	source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh;

bindkey -v
export KEYTIMEOUT=1
autoload -Uz vcs_info
bindkey "^?" backward-delete-char
autoload -U compinit
zstyle ':vcs_info:git:*' formats '%b '
zmodload zsh/complist
zstyle ':completion:*' menu select

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
