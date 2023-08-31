-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use ({
	'nyoom-engineering/oxocarbon.nvim',
	config = function()
		vim.opt.background = "light" -- set this to dark or light
		vim.cmd("colorscheme oxocarbon")
	end
  })

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use ('theprimeagen/harpoon')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'hrsh7th/cmp-nvim-lua'},

		  {'L3MON4D3/LuaSnip'},     -- Required
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use 'airblade/vim-gitgutter'

  use 'MrcJkb/haskell-tools.nvim'

  use "numToStr/FTerm.nvim"

  use "adnan007d/vim-prettier"
end)
