require('lualine').setup { options = {theme = 'gruvbox' } }

require('which-key').setup()
require('mini.trailspace').setup()
require('mason').setup {
	opts = {
		ensure_installed = {
			'clangd',
			'clang-format',
			'pyright',
		},
	},
}

require('nvim-treesitter.configs').setup {
	highlight = {
		enable = true
	}
}

