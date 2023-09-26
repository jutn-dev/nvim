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

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end


return packer.startup(function(use)

  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "kyazdani42/nvim-tree.lua"
  use "windwp/nvim-autopairs"

  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"

  use 'andweeb/presence.nvim'

  use "preservim/tagbar"
  use 'nvim-lualine/lualine.nvim'
  
  use {
	"nvim-treesitter/nvim-treesitter",
	run = ":TSUpdate",
  }
  --LSP
  use "williamboman/mason.nvim" 
  use "williamboman/mason-lspconfig.nvim" 
  use "neovim/nvim-lspconfig"
  use "j-hui/fidget.nvim"

  
  use 'simrat39/rust-tools.nvim'
  use "rust-lang/rust.vim"
  use "saecki/crates.nvim"
  -- Debugging
  use 'nvim-lua/plenary.nvim'
  use 'mfussenegger/nvim-dap'
  use "rcarriga/nvim-dap-ui"
  use 'ravenxrz/DAPInstall.nvim'


  --  use 'jose-elias-alvarez/null-ls.nvim'

  --completion
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"
  use "Saecki/crates.nvim"
  use "petertriho/cmp-git"
  use "hrsh7th/cmp-nvim-lsp"

  --snippits
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

  --themes
  use "NLKNguyen/papercolor-theme"
  use "navarasu/onedark.nvim"
  use 'folke/tokyonight.nvim'

  --hex editor
  use "RaafatTurki/hex.nvim"
  

  use "akinsho/toggleterm.nvim"

  

  -- Automatically set up your configuration after cloning packer.nvim
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end

  local lspconfig = require('lspconfig')
  --setup plugins with no configuration
  require("fidget").setup()

  require('onedark').setup {
    style = 'darker'
  }
  require 'hex'.setup()



end)

