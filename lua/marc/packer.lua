-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  use({ "glepnir/lspsaga.nvim", branch = "main" })
  -- main theme
  use 'navarasu/onedark.nvim'
  -- transparent background
  use 'xiyaowong/nvim-transparent'
  -- use 'folke/tokyonight.nvim'
  use 'b3nj5m1n/kommentary'
  -- smooth scroll with <C-d>
  use 'psliwka/vim-smoothie'
  -- integration with pywal
  use 'dylanaraps/wal.vim'
  -- better make
  use 'jeomake/neomake'
  use {'marcpartensky/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'    }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
end)
