call plug#begin()
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/w0rp/ale'
Plug 'https://github.com/jiangmiao/auto-pairs'
call plug#end()

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

" Config for NERDTree
nmap ù :NERDTreeToggle<ENTER>
let NERDTreeShowHidden=1

" Make an alias for . because it's easier to use ; than . on my kb
nmap ; .

" Theme config (for gvim too)
colorscheme slate
highlight Normal guifg=white guibg=black
