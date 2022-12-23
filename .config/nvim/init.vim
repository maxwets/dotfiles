call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'qtc-de/vve'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'NLKNguyen/papercolor-theme'
Plug 'folke/which-key.nvim'
Plug 'mhinz/vim-startify'
Plug 'jghauser/mkdir.nvim'
call plug#end()

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

let mapleader = " "
nnoremap <leader>q :q<cr>
noremap <leader>t :tabnew<cr>:e 
noremap <leader>n :tabnext<cr>
noremap <leader>p :tabprev<cr> 

vnoremap YY "+y
nnoremap YY "+yy
noremap j gj
noremap k gk
noremap ç 0
noremap à $

set runtimepath^=$XDG_CONFIG_HOME/vim
set runtimepath+=$XDG_DATA_HOME/vim
set runtimepath+=$XDG_CONFIG_HOME/vim/after
set packpath^=$XDG_DATA_HOME/vim,$XDG_CONFIG_HOME/vim
set packpath+=$XDG_CONFIG_HOME/vim/after,$XDG_DATA_HOME/vim/after
if !has('nvim') | set viminfofile=$XDG_STATE_HOME/vim/viminfo | endif

set background=dark
colorscheme PaperColor
