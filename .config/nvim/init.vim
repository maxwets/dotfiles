call plug#begin()
Plug 'folke/which-key.nvim'
Plug 'itchyny/lightline.vim'
Plug 'jghauser/mkdir.nvim'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'qtc-de/vve'
Plug 'rebelot/kanagawa.nvim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
call plug#end()

filetype plugin indent on
syntax enable
"autocmd BufEnter * COQnow

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
noremap <leader><cr> :tabnew<cr>:FZF .<cr>
noremap <leader>n :tabnext<cr>
noremap <leader>N :tabprev<cr> 
noremap <leader>h :wincmd h<cr>
noremap <leader>j :wincmd j<cr>
noremap <leader>k :wincmd k<cr>
noremap <leader>l :wincmd l<cr>
noremap <leader>i :vsplit<cr>
noremap <leader>o :split<cr>
noremap <leader>f :FZF .<cr>

vnoremap YY "+y
nnoremap YY "+yy
noremap ù :NvimTreeToggle<cr>
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
colorscheme kanagawa

lua << EOF
  require("which-key").setup()
  require("nvim-tree").setup()
EOF

