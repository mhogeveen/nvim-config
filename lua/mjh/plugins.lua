local status, packer = pcall(require, 'packer')
if (not status) then
	print('Packer is not installed')
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function (use)
	-- Packer itself
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
    'jose-elias-alvarez/null-ls.nvim',
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
end)
