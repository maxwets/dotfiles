call plug#begin()
Plug 'echasnovski/mini.nvim'
Plug 'folke/which-key.nvim'
Plug 'jghauser/mkdir.nvim'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'qtc-de/vve'
Plug 'sainnhe/gruvbox-material'
call plug#end()

filetype plugin indent on
syntax enable

set background=dark
set colorcolumn=110
set laststatus=2
set mouse=a

set ignorecase
set noshowmode
set nobackup
set hlsearch
set noswapfile

set relativenumber
set number
set nu

set smartcase
set smartindent
set tabstop=4
set shiftwidth=4

let mapleader = " "
noremap <leader><leader> :tabnew<cr>:lua MiniStarter.open()<cr>
noremap <leader>n :tabnext<cr>
noremap <leader>p :tabprev<cr>
noremap ù :NvimTreeToggle<cr>

set runtimepath^=$XDG_CONFIG_HOME/vim
set runtimepath+=$XDG_DATA_HOME/vim
set runtimepath+=$XDG_CONFIG_HOME/vim/after
set packpath^=$XDG_DATA_HOME/vim,$XDG_CONFIG_HOME/vim
set packpath+=$XDG_CONFIG_HOME/vim/after,$XDG_DATA_HOME/vim/after
if !has('nvim') | set viminfofile=$XDG_STATE_HOME/vim/viminfo | endif

colorscheme gruvbox-material

lua << EOF
	require('which-key').setup()
	require('nvim-tree').setup()
	require('mini.starter').setup()
	require('mini.trailspace').setup()
	require('mini.completion').setup()
EOF

