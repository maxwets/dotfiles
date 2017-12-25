execute pathogen#infect()

filetype plugin indent on
syntax on

" Basic config
set number
set relativenumber
set ignorecase
set smartcase
set shiftwidth=4
set smartindent
set tabstop=4
set colorcolumn=110
set nobackup
set noswapfile

" Hotkey config for NERDTree
nmap ù :NERDTreeToggle
nmap ; .
" Theme config (for gvim too)
colorscheme slate
highlight Normal guifg=white guibg=black
