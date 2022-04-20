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
  use 'tmhedberg/SimpylFold' -- folding to collapse code blocks
  use 'vim-airline/vim-ariline' -- status bar at bottom

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP support
      {'neovim/nvim-lspconfig'},
      {'williamboman/vnim-lsp-installer'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},
      {'saadparwaiz1/cmp_luasnip'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  -- Automatically set up your configuration after closing packer.vim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

