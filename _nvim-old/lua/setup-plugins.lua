-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes useins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost setup-useins.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- add list of useins to install
return packer.startup(function(use)
  -- packer can manage itself
  use("wbthomason/packer.nvim")

  use("nvim-lua/plenary.nvim") -- lua functions that many useins use

  -- Snippets
  use("saadparwaiz1/cmp_luasnip")
  use("rafamadriz/friendly-snippets")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-look")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/nvim-cmp")
  use("L3MON4D3/LuaSnip")

  use("jose-elias-alvarez/typescript.nvim")
  -- git integration
  use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

  use("morhetz/gruvbox")
  use("szw/vim-maximizer")

  use("neovim/nvim-lspconfig")
  use("onsails/lspkind-nvim")
  use({ "glepnir/lspsaga.nvim", branch = "main" })

  use("ThePrimeagen/vim-be-good")

  if packer_bootstrap then
    require("packer").sync()
  end
end)
