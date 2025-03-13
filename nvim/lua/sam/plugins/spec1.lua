
return {
    {
        "PedramNavid/dbtpal",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
        },
        ft = {
            "sql",
            "md",
            "yaml",
        },
        keys = {
            { "<leader>drf", "<cmd>DbtRun<cr>" },
            { "<leader>drp", "<cmd>DbtRunAll<cr>" },
            { "<leader>dtf", "<cmd>DbtTest<cr>" },
            { "<leader>dm", "<cmd>lua require('dbtpal.telescope').dbt_picker()<cr>" },
        },
        config = function()
            require("dbtpal").setup({
                path_to_dbt = "dbt",
                path_to_dbt_project = "",
                path_to_dbt_profiles_dir = vim.fn.expand("~/.dbt"),
                extended_path_search = true,
                protect_compiled_files = true,
            })
            require("telescope").load_extension("dbtpal")
        end,
    },
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		requires = { {'nvim-lua/plenary.nvim'} }
	},
	{
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	},
    {'nvim-treesitter/nvim-treesitter'},
    -- {'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}},
	{
		'VonHeikemen/lsp-zero.nvim',
		dependencies = {
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
	},
    {
        'lewis6991/gitsigns.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function() require('gitsigns').setup() end,
    },
    {'othree/html5.vim'},
    {'pangloss/vim-javascript'},
    {'evanleck/vim-svelte'},
    {'editorconfig/editorconfig-vim'},
    {'nanotee/sqls.nvim'},
}
