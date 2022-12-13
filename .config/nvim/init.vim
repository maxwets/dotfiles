call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
nnoremap <leader>q :q<CR>

" Config for NERDTree
nmap ù :NERDTreeToggle<ENTER>
let NERDTreeShowHidden=1

" Copy to X clipboard
vnoremap YY "+y
nnoremap YY "+yy

" Character encoding/decoding
vnoremap <leader>eu :!python3 -c 'import sys; from urllib import parse; print(parse.quote_plus(sys.stdin.read().strip()))'<CR>
vnoremap <leader>du :!python3 -c 'import sys; from urllib import parse; print(parse.unquote_plus(sys.stdin.read().strip()))'<CR>
vnoremap <leader>eb :'<,'>!python3 -m base64<CR>
vnoremap <leader>db :'<,'>!python3 -m base64 -d<CR>

" movement keys
nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk

" Tab management
nnoremap <leader>t :tabnew<CR>:e 
nnoremap <leader>n :tabnext<CR>
nnoremap <leader>p :tabprev<CR> 

" Split management
"nnoremap <leader>j <C-W><C-J>
"nnoremap <leader>k <C-W><C-K>
"nnoremap <leader>l <C-W><C-L>
"nnoremap <leader>h <C-W><C-H>
"nnoremap <leader>h :sp<CR>:e 
"nnoremap <leader>v :vs<CR>:e 
"set splitbelow
"set splitright

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
