return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/which-key.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use 'nekonako/xresources-nvim'
  -- use 'sheerun/vim-polyglot'
  use 'neovim/nvim-lspconfig'
  use {'kabouzeid/nvim-lspinstall', requires = 'neovim/nvim-lspconfig'}
  use 'hrsh7th/nvim-compe'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'hrsh7th/vim-vsnip'
  use 'terrortylor/nvim-comment'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use {'p00f/nvim-ts-rainbow'}
  use 'steelsojka/pears.nvim'
  -- use {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}
  use 'windwp/nvim-ts-autotag'
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'glepnir/galaxyline.nvim',
    branch = 'main',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use 'editorconfig/editorconfig-vim'
  use 'andrejlevkovitch/vim-lua-format'
  use 'akinsho/nvim-toggleterm.lua'
  use 'lewis6991/gitsigns.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'folke/lua-dev.nvim'
  use {'rafamadriz/friendly-snippets'}
  use 'norcalli/snippets.nvim'
  use 'kitagry/vs-snippets'
  use 'mattn/emmet-vim'
  use {'prettier/vim-prettier', run = 'npm install'}
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}
end)
