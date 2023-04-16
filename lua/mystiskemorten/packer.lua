vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Package manager
	use 'wbthomason/packer.nvim'

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },
		}
	}

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use('nvim-treesitter/playground')
	use("nvim-treesitter/nvim-treesitter-context");

	-- Git related plugins
	use 'tpope/vim-fugitive'
	use 'tpope/vim-rhubarb'
	use 'lewis6991/gitsigns.nvim'
	use('mbbill/undotree')

	use 'nvim-lualine/lualine.nvim' -- Fancier statusline
	use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines
	use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically

	-- Go dev
	use 'ray-x/go.nvim'
	use 'ray-x/guihua.lua'

	-- Fuzzy Finder (files, lsp, etc)
	use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }

	-- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }
	use('theprimeagen/harpoon')

	-- Colorscheme
	use { "ellisonleao/gruvbox.nvim" }

	use({
		"kylechui/nvim-surround",
		tag = "*" -- Use for stability; omit to use `main` branch for the latest features
	})
	use("windwp/nvim-autopairs")
	use("theprimeagen/refactoring.nvim")
	use { 'sindrets/diffview.nvim', requires = { 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons' } }
	use("lervag/wiki.vim")
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		}
	}
end)
