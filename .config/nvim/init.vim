call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'qtc-de/vve'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
call plug#end()

let g:coc_disable_startup_warning = 1
filetype plugin indent on
syntax enable

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
set laststatus=2
set nohlsearch
set mouse=a

" leader keymaps
let mapleader = " "
nnoremap <leader>q :q<cr>

" Copy to X clipboard
vnoremap YY "+y
nnoremap YY "+yy

" Character encoding/decoding
noremap <leader>b c<c-r>=system("base64 -w 0", @")<cr><esc>
noremap <leader>B c<c-r>=system("base64 -d", @")<cr><esc>

" movement keys
noremap j gj
noremap k gk

" Move cursor to ^ and $
noremap ç 0
noremap à $

" Tab management
noremap <leader>t :tabnew<cr>:e 
noremap <leader>n :tabnext<cr>
noremap <leader>p :tabprev<cr> 

" VCM config
autocmd FileType vim let b:vcm_tab_complete = 'vim'

" XDG config
set runtimepath^=$XDG_CONFIG_HOME/vim
set runtimepath+=$XDG_DATA_HOME/vim
set runtimepath+=$XDG_CONFIG_HOME/vim/after
set packpath^=$XDG_DATA_HOME/vim,$XDG_CONFIG_HOME/vim
set packpath+=$XDG_CONFIG_HOME/vim/after,$XDG_DATA_HOME/vim/after
if !has('nvim') | set viminfofile=$XDG_STATE_HOME/vim/viminfo | endif

" Theme config
let g:gruvbox_italic=1
colorscheme gruvbox
highlight Normal guifg=white guibg=black
if !has('gui_running')
  set t_Co=256
endif
