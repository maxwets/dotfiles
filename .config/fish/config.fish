# Set theme
omf theme spacefish

# Globals
set -gx EDITOR  "nvim"
set -gx VISUAL  "nvim"
set -gx PAGER   "most"
set -gx BROWSER "brave-browser"

# Set vi mode
fish_vi_key_bindings
set fish_bind_mode insert

# Aliases
alias vim  nvim
alias vi   nvim
alias cd.. 'cd ..'

# Copy to primary and secundary clipboard
alias xclip 'xclip -selection "clip"'

# Set gruvbox theme
theme_gruvbox dark soft
