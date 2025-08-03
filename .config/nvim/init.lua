local vim    = vim
local Plug   = vim.fn['plug#']
local config = os.getenv('XDG_CONFIG_HOME')
local data   = os.getenv('XDG_DATA_HOME')
local state  = os.getenv('XDG_STATE_HOME')

vim.call('plug#begin')
Plug 'jghauser/mkdir.nvim'
Plug 'kshenoy/vim-signature'
Plug 'nvim-lualine/lualine.nvim'
Plug 'sainnhe/gruvbox-material'
vim.call('plug#end')

vim.cmd 'filetype plugin indent on'
vim.cmd 'syntax on'
vim.cmd 'hi! link netrwMarkFile Search'
vim.cmd('silent! colorscheme gruvbox-material')

vim.cmd [[ highlight link DiffAdd    GruvboxGreenSign  ]]
vim.cmd [[ highlight link DiffChange GruvboxYellowSign ]]
vim.cmd [[ highlight link DiffDelete GruvboxRedSign    ]]

vim.api.nvim_set_keymap('n', '<cr>',  ':nohlsearch<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-m>', ':marks<cr>',      { noremap = true })

vim.g.mapleader                = ' '
vim.g.netrw_banner             = 0
vim.g.netrw_liststyle          = 0
vim.g.netrw_list_hide          = vim.opt.wildignore:get()
vim.g.netrw_winsize            = 16
vim.g.netrw_list_hide          = '\\(^\\|\\s\\s\\)\\zs\\.\\S\\+'
vim.g.netrw_localcopydircmd    = 'cp -r'

vim.g.gruvbox_italic           = 1
vim.g.gruvbox_bold             = 1
vim.g.gruvbox_termcolors       = 256
vim.g.gruvbox_contrast_dark    = 'medium'
vim.g.gruvbox_contrast_light   = 'hard'
vim.g.gruvbox_invert_selection = 0

vim.opt.autoread               = true
vim.opt.background             = 'dark'
vim.opt.compatible             = false
vim.opt.cursorline             = true
vim.opt.encoding               = 'utf-8'
vim.opt.equalalways            = true
vim.opt.fileformat             = 'unix'
vim.opt.hlsearch               = true
vim.opt.ignorecase             = true
vim.opt.laststatus             = 2
vim.opt.mouse                  = 'a'
vim.opt.number                 = true
vim.opt.relativenumber         = true
vim.opt.scrolloff              = 2
vim.opt.shellredir             = '>'
vim.opt.shiftwidth             = 4
vim.opt.smartcase              = true
vim.opt.smartindent            = true
vim.opt.splitbelow             = true
vim.opt.splitright             = true
vim.opt.swapfile               = false
vim.opt.tabstop                = 4
vim.opt.termguicolors          = true
vim.opt.textwidth              = 0
vim.opt.wrapmargin             = 0
vim.opt.undofile               = true

vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      vim.api.nvim_win_set_cursor(0, mark)
    end
  end,
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

require('lualine').setup { options = { theme = 'gruvbox-material' } }

