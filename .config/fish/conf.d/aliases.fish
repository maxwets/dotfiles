# verbosity
alias cp="cp -iv";
alias mv="mv -iv";
alias rm="rm -vI";
alias mkdir="mkdir -pv";

# colors
alias ls="ls -hNSv --size -1 --color=auto --group-directories-first --classify";
alias grep="grep --color=auto";
alias diff="diff --color=auto";
alias ip="ip -color=auto";

# security
alias chmod="chmod --preserve-root";
alias chown="chown --preserve-root";
alias rm="rm --preserve-root";

# sudo
alias apt-get="sudo apt-get";
alias apt="sudo apt"

# convenience
alias cd..="cd ..";
alias la="ls -lA";
alias ll="ls -l";
alias nnn="nnn -HSadeor .";
alias vim="nvim";
alias vi="nvim";
alias clip="xclip -selection 'clip'";

# xdg-cleaning
alias mitmproxy="mitmproxy --set confdir=$XDG_CONFIG_HOME/mitmproxy";
alias mitmweb="mitmweb --set confdir=$XDG_CONFIG_HOME/mitmproxy"

# cURL with proxy (BBH)
alias c="curl --proxy http://127.0.0.1:8080 --cacert ~/.mitmproxy/mitmproxy-ca-cert.pem --insecure -L ";

