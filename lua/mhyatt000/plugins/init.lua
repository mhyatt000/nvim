return {

    'folke/lazy.nvim',
	'theprimeagen/harpoon',
	'mbbill/undotree',
	'tpope/vim-fugitive',
    'saadparwaiz1/cmp_luasnip',

    -- folding
    'tmhedberg/SimpylFold',
    'Konfekt/FastFold',

    'github/copilot.vim',

    'rafamadriz/friendly-snippets',

	{
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		-- or                            , branch = '0.1.x',
		dependencies = { {'nvim-lua/plenary.nvim'} }
	},

    {
        "ellisonleao/gruvbox.nvim",
        config = function ()
            vim.o.background = "dark" -- or "light" for light mode
            vim.cmd([[colorscheme gruvbox]])
        end
    },

	-- {
		-- 'rose-pine/neovim',
		-- as = 'rose-pine',
		-- config = function() vim.cmd.colorscheme("rose-pine")
		-- end
	-- },

	'nvim-treesitter/nvim-treesitter',

	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		dependencies = {
			--- Uncomment these if you want to manage LSP servers from neovim
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
			-- LSP Support
			'neovim/nvim-lspconfig',
			-- Autocompletion
			'hrsh7th/nvim-cmp',
			'hrsh7th/cmp-nvim-lsp',
			'L3MON4D3/LuaSnip',
            'rafamadriz/friendly-snippets',
		}
	},

    {
        'hrsh7th/nvim-cmp',
        config = function ()
            require'cmp'.setup {
                snippet = {
                    expand = function(args)
                        require'luasnip'.lsp_expand(args.body)
                    end
                },

                sources = {
                    { name = 'luasnip', option = { use_show_condition = false } },
                    -- more sources
                },
            }
        end
    },

}
