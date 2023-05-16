-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({ 'rose-pine/neovim', as = 'rose-pine' })
	require('rose-pine').setup({
		--- @usage 'auto'|'main'|'moon'|'dawn'
		variant = 'moon',
		--- @usage 'main'|'moon'|'dawn'
		dark_variant = 'moon',
		bold_vert_split = false,
		dim_nc_background = false,
		disable_background = false,
		disable_float_background = false,
		disable_italics = false,

		--- @usage string hex value or named color from rosepinetheme.com/palette
		groups = {
			background = 'base',
			background_nc = '_experimental_nc',
			panel = 'surface',
			panel_nc = 'base',
			border = 'highlight_med',
			comment = 'muted',
			link = 'iris',
			punctuation = 'subtle',

			error = 'love',
			hint = 'iris',
			info = 'foam',
			warn = 'gold',

			headings = {
				h1 = 'iris',
				h2 = 'foam',
				h3 = 'rose',
				h4 = 'gold',
				h5 = 'pine',
				h6 = 'foam',
			}
			-- or set all headings at once
			-- headings = 'subtle'
		},

		-- Change specific vim highlight groups
		-- https://github.com/rose-pine/neovim/wiki/Recipes
		highlight_groups = {
			ColorColumn = { bg = 'rose' },

			-- Blend colours against the "base" background
			CursorLine = { bg = 'foam', blend = 10 },
			StatusLine = { fg = 'love', bg = 'love', blend = 10 },
		}
	})

	vim.cmd('colorscheme rose-pine')
    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
    use("christoomey/vim-tmux-navigator")
    use("tpope/vim-commentary")
    use ('m4xshen/autoclose.nvim')
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
				'williamboman/mason.nvim',
				run = function()
					pcall(vim.cmd, 'MasonUpdate')
				end,
			},
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = function()
            require("nvim-tree").setup {}
        end
    }


end)



