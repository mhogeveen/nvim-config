-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status, packer = pcall(require, 'packer')
if (not status) then
	print('Packer is not installed')
	return
end

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

	-- Github colorscheme
	use { 'projekt0n/github-nvim-theme' }

	-- Neotree
  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'kyazdani42/nvim-web-devicons',
      'muniftanjim/nui.nvim'
    }
  }

	-- FZF
	use {
    'junegunn/fzf',
	  'junegunn/fzf.vim',
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
end)
