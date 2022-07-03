# Set theme
omf theme zish

# Globals
set -gx EDITOR  "nvim"
set -gx VISUAL  "nvim"
set -gx PAGER   "less"
set -gx BROWSER "firefox"

# Set vi mode
fish_vi_key_bindings
set fish_bind_mode insert

# Set gruvbox theme
theme_gruvbox dark soft

# Aliases
alias vim  nvim
alias vi   nvim
alias cd.. 'cd ..'

# Copy to primary and secundary clipboard
alias xclip 'xclip -selection "clip"'

