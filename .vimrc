call plug#begin()
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/Valloric/YouCompleteMe'
Plug 'https://github.com/Procrat/oz.vim'
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

" Config for NERDTree
nmap ù :NERDTreeToggle<ENTER>
let NERDTreeShowHidden=1

" Swap w and z
nmap z w

" Tab management
nmap <C-t> :tabnew<ENTER>
nmap <C-n> :tabnext<ENTER>
nmap <C-p> :tabprev<ENTER>

" Theme config (for gvim too)
colorscheme slate
highlight Normal guifg=white guibg=black
if !has('gui_running')
  set t_Co=256
endif
