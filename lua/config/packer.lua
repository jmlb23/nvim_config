vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use "elihunter173/dirbuf.nvim"
	use {
 	 'nvim-tree/nvim-tree.lua',
	  requires = {
	    'nvim-tree/nvim-web-devicons', -- optional
	  },
	  config = function()
	    require("nvim-tree").setup {
		hijack_directories = { enable = false }
	    }
	  end
	}
	use "lukas-reineke/indent-blankline.nvim"
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use('theprimeagen/harpoon')
	use('williamboman/mason.nvim')
        use('williamboman/mason-lspconfig.nvim')
	use('neovim/nvim-lspconfig')
	use('hrsh7th/cmp-nvim-lsp')
	use('hrsh7th/nvim-cmp')
	use {
		'lewis6991/gitsigns.nvim',
	}

	use "jose-elias-alvarez/null-ls.nvim"

	use {
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	}

	if vim.loop.os_uname().sysname == "Darwin" then
		use {
			'xbase-lab/xbase',
			run = 'make install', -- make free_space (not recommended, longer build time)
			requires = {
				"nvim-lua/plenary.nvim",
				"nvim-telescope/telescope.nvim",
				"neovim/nvim-lspconfig"
			}
		}
	end

end)
