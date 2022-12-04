set -gx TERM "xterm-256color"
set -gx TERMINAL "xterm-256color"
set -gx EDITOR "nvim"
set -gx PAGER "less"
set -gx READER "zathura"
set -gx BROWSER "firefox"
set -gx VIDEO "mpv"
set -gx IMAGE "sxiv"

set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_CACHE_HOME "$HOME/.cache"

set -gx ANDROID_SDK_HOME "$XDG_CONFIG_HOME"/android
set -gx ANSIBLE_CONFIG "$XDG_CONFIG_HOME"/ansible/ansible.cfg
set -gx AZURE_CONFIG_DIR "$XDG_CONFIG_HOME"/azure
set -gx CARGO_HOME "$XDG_DATA_HOME"/cargo
set -gx GOPATH "$XDG_DATA_HOME"/go
set -gx GNUPGHOME "$XDG_DATA_HOME"/gnupg
set -gx GTK_RC_FILES "$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
set -gx GTK2_RC_FILES "$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
set -gx HISTFILE "$XDG_DATA_HOME"/history
set -gx INPUTRC "$XDG_CONFIG_HOME"/shell/inputrc
set -gx KDEHOME "$XDG_CONFIG_HOME"/kde
set -gx LESSHISTFILE "-"
set -gx PASSWORD_STORE_DIR "$XDG_DATA_HOME"/password-store
set -gx RUSTUP_HOME "$XDG_DATA_HOME"/rustup
set -gx TMUX_TMPDIR "$XDG_RUNTIME_DIR"
set -gx WEECHAT_HOME "$XDG_CONFIG_HOME"/weechat
set -gx WGETRC "$XDG_CONFIG_HOME"/wget/wgetrc
set -gx WORKON_HOME "$XDG_DATA_HOME"/virtualenvs
set -gx ZDOTDIR "$XDG_CONFIG_HOME"/zsh
set -gx _JAVA_OPTIONS -Djava.util.prefs.userRoot "$XDG_CONFIG_HOME"/java

