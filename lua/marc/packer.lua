-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'navarasu/onedark.nvim'
  -- use 'folke/tokyonight.nvim'
  use 'b3nj5m1n/kommentary'
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'    }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
end)
