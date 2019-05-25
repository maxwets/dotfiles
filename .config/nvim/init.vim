call plug#begin()
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/Valloric/YouCompleteMe'
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
set laststatus=2
set nohlsearch

" Config for NERDTree
nmap ù :NERDTreeToggle<ENTER>
let NERDTreeShowHidden=1

" leader keymaps
let mapleader = " "
nnoremap <leader>q :q<CR>

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
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>h :sp<CR>:e 
nnoremap <leader>v :vs<CR>:e 
set splitbelow
set splitright
 
" Theme config
colorscheme slate
highlight Normal guifg=white guibg=black
if !has('gui_running')
  set t_Co=256
endif
