-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_packer, packer = pcall(require, 'packer')
if not status_packer then
	print('Packer is not installed')
	return
end

local status_impatient, impatient = pcall(require, 'impatient')
if not status_impatient then return end

impatient.enable_profile()

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
})

packer.startup(function (use)
	-- Packer
	use { 'wbthomason/packer.nvim' }

  -- Impatient
  use { 'lewis6991/impatient.nvim' }

	-- Github colorscheme
	use { 'projekt0n/github-nvim-theme' }

  -- Nvim tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.x',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- LSP's
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- Bufferline
  use {
    'romgrk/barbar.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' }
  }

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter' }

  -- Hop
  use {
    'phaazon/hop.nvim',
    branch = 'v2',
  }

  -- Wakatime
  use { 'wakatime/vim-wakatime' }

  -- Floaterm
  use { 'voldikss/vim-floaterm' }

  -- Which key
  use { 'folke/which-key.nvim' }
end)
