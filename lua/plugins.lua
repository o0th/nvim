require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Dracula theme
	use { 'dracula/vim', as = 'dracula' }

	-- Telescope
	use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }

	-- Barbar
	use { 'romgrk/barbar.nvim', requires = { 'kyazdani42/nvim-web-devicons' } }

	-- Lualine
	use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

	-- Gitsigns
	use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }

	-- Autopairs
	use { 'jiangmiao/auto-pairs' }

	-- Editorconfig
	use { 'editorconfig/editorconfig-vim' }

  -- LSP Config
  use { 'neovim/nvim-lspconfig' }

  -- LSP Installer
  use { 'williamboman/nvim-lsp-installer' }

  -- Autocomplete
  use { 
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'onsails/lspkind-nvim'
  }
end)
