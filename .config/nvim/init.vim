call plug#begin()
Plug 'echasnovski/mini.nvim'
Plug 'folke/which-key.nvim'
Plug 'jghauser/mkdir.nvim'
Plug 'nvim-lualine/lualine.nvim/'
Plug 'qtc-de/vve'
Plug 'sainnhe/gruvbox-material'
call plug#end()

colorscheme gruvbox-material
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
set noshowmode

let mapleader = " "
noremap <leader><leader> :tabnew<cr>:lua MiniStarter.open()<cr>
noremap <leader>n :tabnext<cr>
noremap <leader>p :tabprev<cr>
noremap <leader>h :lua MiniFiles.open()<cr>
noremap <leader>g :lua MiniFiles.close()<cr>

set runtimepath^=$XDG_CONFIG_HOME/vim
set runtimepath+=$XDG_DATA_HOME/vim
set runtimepath+=$XDG_CONFIG_HOME/vim/after
set packpath^=$XDG_DATA_HOME/vim,$XDG_CONFIG_HOME/vim
set packpath+=$XDG_CONFIG_HOME/vim/after,$XDG_DATA_HOME/vim/after
if !has('nvim') | set viminfofile=$XDG_STATE_HOME/vim/viminfo | endif

lua << EOF
  require('which-key').setup()
	require('mini.starter').setup()
	require('mini.trailspace').setup()
	require('mini.files').setup()
	require('mini.completion').setup()
	require('lualine').setup { options = { theme = 'gruvbox-material', icons_enabled = false, section_separators = { left = '', right = '' }, component_separators = { left = '', right = '' } } }
EOF

