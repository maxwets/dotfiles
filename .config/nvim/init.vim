call plug#begin()
Plug 'dense-analysis/ale'
Plug 'folke/which-key.nvim'
Plug 'itchyny/lightline.vim'
Plug 'jghauser/mkdir.nvim'
Plug 'mhinz/vim-startify'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'qtc-de/vve'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
call plug#end()

filetype plugin indent on
syntax enable

set background=dark
set colorcolumn=110
set ignorecase
set laststatus=2
set mouse=a
set nobackup
set nohlsearch
set noswapfile
set number
set nu
set relativenumber
set shiftwidth=2
set smartcase
set smartindent
set tabstop=2

let mapleader = " "
nnoremap <leader>q :q<cr>
noremap <leader><leader> :tabnew<cr>:e <cr>
noremap <leader>n :tabnext<cr>
noremap <leader>N :tabprev<cr> 

vnoremap YY "+y
nnoremap YY "+yy
noremap ù :NvimTreeToggle<cr>

set runtimepath^=$XDG_CONFIG_HOME/vim
set runtimepath+=$XDG_DATA_HOME/vim
set runtimepath+=$XDG_CONFIG_HOME/vim/after
set packpath^=$XDG_DATA_HOME/vim,$XDG_CONFIG_HOME/vim
set packpath+=$XDG_CONFIG_HOME/vim/after,$XDG_DATA_HOME/vim/after
if !has('nvim') | set viminfofile=$XDG_STATE_HOME/vim/viminfo | endif

colorscheme slate

lua << EOF
  require("which-key").setup()
  require("nvim-tree").setup()
EOF

