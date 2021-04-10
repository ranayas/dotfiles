local use = require('packer').use

require('packer').startup(function ()
  use 'wbthomason/packer.nvim'
  use 'windwp/nvim-autopairs'
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'hrsh7th/nvim-compe'
  use 'sheerun/vim-polyglot'
  use 'nekonako/xresources-nvim'
  use 'hrsh7th/vim-vsnip'
  use "rafamadriz/friendly-snippets"
  use 'ChristianChiarulli/html-snippets'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'}
    }
  }
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate'
  }
  use { 'p00f/nvim-ts-rainbow', requires = 'nvim-treesitter/nvim-treesitter' }
  use {
    'JoosepAlviste/nvim-ts-context-commentstring',
    requires = 'nvim-treesitter/nvim-treesitter'
  }
  use {
    'windwp/nvim-ts-autotag',
    requires = 'nvim-treesitter/nvim-treesitter'
  }
  use {
    "terrortylor/nvim-comment",
    requires = 'nvim-treesitter/nvim-treesitter'
  }
  use 'norcalli/nvim-colorizer.lua'
  use {
    'olimorris/onedark.nvim',
    requires = 'rktjmp/lush.nvim'
  }
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }
  use 'f-person/git-blame.nvim'
  use {
    'glepnir/galaxyline.nvim',
     branch = 'main',
     requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use 'romgrk/barbar.nvim'
  use 'metakirby5/codi.vim'
end)
