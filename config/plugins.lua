return require('packer').startup(function(use)
  -- let packer manage itself
  use 'wbthomason/packer.nvim'
  
  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  -- Color themes
  use 'marko-cerovac/material.nvim'
  use({
	  "catppuccin/nvim",
	  as = "catppuccin"
  })
  use 'rose-pine/neovim'
  use 'folke/tokyonight.nvim'
  use 'olimorris/onedarkpro.nvim'


  -- LSP
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'jose-elias-alvarez/null-ls.nvim'


  use 'SirVer/ultisnips'
  use 'quangnguyen30192/cmp-nvim-ultisnips'


  use "williamboman/nvim-lsp-installer"
  use "neovim/nvim-lspconfig"

  use "ray-x/lsp_signature.nvim"
  use "tamago324/nlsp-settings.nvim"


  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'

  -- nvim-tree File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use {"akinsho/toggleterm.nvim", tag = 'v1.*', config = function()
    require("toggleterm").setup()
  end}

  use 'gelguy/wilder.nvim'

  use 'ryanoasis/vim-devicons' -- icons

  -- TELESCOPE
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'liuchengxu/vim-clap'

  use { "nvim-telescope/telescope-file-browser.nvim" }

  -- bufferline
  -- using packer.nvim
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

end)
