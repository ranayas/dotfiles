call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense engine.
Plug 'hzchirs/vim-material' " vim-material theme.
Plug 'vim-airline/vim-airline' " Status/tabline.
Plug 'ryanoasis/vim-devicons' " Icons.
Plug 'alvan/vim-closetag' " Autoclose html tags
Plug 'Yggdroot/indentLine' " Ident line
Plug 'honza/vim-snippets' " snippets
" For vim-laravel
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
Plug 'noahfrederick/vim-composer'
Plug 'noahfrederick/vim-laravel'
Plug 'jwalton512/vim-blade'
Plug 'tpope/vim-sleuth' " Auto tab tricks
Plug 'sheerun/vim-polyglot' " Syntax Highlightings
Plug 'vim-language-dept/css-syntax.vim'
" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mikelue/vim-maven-plugin' " Maven
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim' " Vim emmet
Plug 'sainnhe/sonokai' " sonokai theme
Plug 'tanvirtin/monokai.nvim'
Plug 'nekonako/xresources-nvim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'digitaltoad/vim-pug'
Plug 'metakirby5/codi.vim'
call plug#end()

