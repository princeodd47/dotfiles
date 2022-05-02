-- PackerUpdate - Install new plugins

local fn = vim.fn

--Automaticall install packer
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
  print "Installing packer close and reopen NeoVim."
  vim.cmd [[packadd packer.nvim]]
end

-- Use a protected call to not error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Plugins
return packer.startup(function(use)
  use 'wbthomason/packer.nvim'  -- Have packer manage itself
  use 'tpope/vim-commentary' -- comment code with gcc and gc
  use 'tpope/vim-surround' -- surround code with yws and cs
  use 'honza/vim-snippets'
  use 'sjl/gundo.vim'
  use 'airblade/vim-gitgutter' -- git status on left
  use 'kshenoy/vim-signature'
  use 'vim-airline/vim-airline' -- status bar at bottom
  use 'vim-airline/vim-airline-themes' -- status bar at bottom
  use 'ryanoasis/vim-devicons' -- font icons

  -- treesitter for highlighting and folding
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate",
  }
  use 'p00f/nvim-ts-rainbow' -- rainbow highlight nested parentheses

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP support
      {'neovim/nvim-lspconfig'},
      {'williamboman/nvim-lsp-installer'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'}, -- completion plugin
      {'hrsh7th/cmp-buffer'}, -- buffer completions
      {'hrsh7th/cmp-cmdline'}, -- cmdline completions
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},
      {'hrsh7th/cmp-path'}, -- path completions
      {'saadparwaiz1/cmp_luasnip'}, -- snippet completions

      -- Snippets
      {'L3MON4D3/LuaSnip'}, -- snippet engine
      {'rafamadriz/friendly-snippets'}, -- a bunch of snippets to use
    }
  }

  -- Automatically set up your configuration after closing packer.vim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

