-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- completion
  use "hrsh7th/nvim-cmp"
  use 'neovim/nvim-lspconfig'
  use({ "glepnir/lspsaga.nvim", branch = "main" })

  -- comment
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
    }

  -- main theme
  use 'navarasu/onedark.nvim'
  -- transparent background
  use 'xiyaowong/nvim-transparent'
  -- use 'folke/tokyonight.nvim'
  -- smooth scroll with <C-d>
  use 'psliwka/vim-smoothie'
  -- integration with pywal
  use 'dylanaraps/wal.vim'
  -- better make
  use 'neomake/neomake'
  use {'marcpartensky/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'    }
  use {
		"nvim-treesitter/nvim-treesitter",
		-- :TSUpdate[Sync] doesn't exist until plugin/nvim-treesitter is loaded (i.e. not after first install); call update() directly
		run = function() require("nvim-treesitter.install").update { with_sync = true } end
    }
    if packer_bootstrap then require("packer").sync() end
  -- navigation
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'kyazdani42/nvim-web-devicons'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
end)
