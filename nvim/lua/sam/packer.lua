-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
    --
    --
	use 'wbthomason/packer.nvim'
	-- use 'github/copilot.vim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    use { "ellisonleao/gruvbox.nvim" }
    use { "sainnhe/gruvbox-material" }
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
            {"jose-elias-alvarez/null-ls.nvim" },
            {"MunifTanjim/eslint.nvim" },
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},
			{'hrsh7th/cmp-path'},
			{'hrsh7th/nvim-cmp'},
			{'saadparwaiz1/cmp_luasnip'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}
    use {
        'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
        config = function() require('gitsigns').setup() end
    }
    use 'othree/html5.vim'
    use 'pangloss/vim-javascript'
    use 'evanleck/vim-svelte'
    use 'editorconfig/editorconfig-vim'
end)
