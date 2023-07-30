vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use "rebelot/kanagawa.nvim"
  use 'nvim-lualine/lualine.nvim'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  use "rmagatti/alternate-toggler"
  use "windwp/nvim-autopairs"
  use "mg979/vim-visual-multi"
  use "gcmt/wildfire.vim"
  use "kylechui/nvim-surround"

  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'

  use({
    "L3MON4D3/LuaSnip",
    tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    run = "make install_jsregexp"
  })

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use "windwp/nvim-ts-autotag"
  use "p00f/nvim-ts-rainbow"
  use "axelvc/template-string.nvim"

  use 'jose-elias-alvarez/null-ls.nvim'

  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'onsails/lspkind.nvim'
end)
