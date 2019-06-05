call plug#begin()
Plug 'https://github.com/ajh17/VimCompletesMe'
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/tpope/vim-surround'
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

" leader keymaps
let mapleader = " "
nnoremap <leader>q :q<CR>

" Config for NERDTree
nmap ù :NERDTreeToggle<ENTER>
let NERDTreeShowHidden=1

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
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>
nnoremap <leader>h :sp<CR>:e 
nnoremap <leader>v :vs<CR>:e 
set splitbelow
set splitright

" VCM config
autocmd FileType vim let b:vcm_tab_complete = 'vim'

" Theme config
let g:gruvbox_italic=1
colorscheme gruvbox
highlight Normal guifg=white guibg=black
if !has('gui_running')
  set t_Co=256
endif
