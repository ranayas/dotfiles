call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense engine.
Plug 'hzchirs/vim-material' " vim-material theme.
Plug 'vim-airline/vim-airline' " Status/tabline.
Plug 'ryanoasis/vim-devicons' " Icons.
Plug 'alvan/vim-closetag' " Autoclose html tags
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " Markdown preview
Plug 'ghifarit53/tokyonight-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'joshdick/onedark.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'rakr/vim-one'
Plug 'Yggdroot/indentLine' " Ident line
Plug 'honza/vim-snippets' " snippets
" For vim-laravel
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
Plug 'noahfrederick/vim-composer'
Plug 'tpope/vim-sleuth' " Auto tab tricks
Plug 'sheerun/vim-polyglot' " Syntax Highlightings
Plug 'vim-language-dept/css-syntax.vim'
" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mikelue/vim-maven-plugin' " Maven
" Plug 'vim-python/python-syntax'
" Plug 'leafgarland/typescript-vim'
" Plug 'HerringtonDarkholme/yats.vim' " TypeScript.
" Plug 'maxmellon/vim-jsx-pretty' " jsx and tsx.
Plug 'turbio/bracey.vim' " Live html, css and javascript editing.
call plug#end()
