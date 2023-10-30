-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    -- use ({ 
        -- "ellisonleao/gruvbox.nvim",
        -- config = function ()
            -- vim.o.background = "dark" -- or "light" for light mode
            -- vim.cmd([[colorscheme gruvbox]])
        -- end
    -- })

	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function() vim.cmd.colorscheme("rose-pine")
		end
	})

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment these if you want to manage LSP servers from neovim
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
            { "rafamadriz/friendly-snippets" },
		}
	}

    use { "rafamadriz/friendly-snippets" }

    use {
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
    }
    use { 'saadparwaiz1/cmp_luasnip' }

end)
