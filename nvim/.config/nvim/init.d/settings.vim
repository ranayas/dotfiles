" +--------+
" | Custom |
" +--------+

set modifiable
syntax on
set ignorecase
" Show line numbers
set number

" Enable 24bit rgb colors
set termguicolors

" Set relative number
set rnu

" Adjust default color groups to dark
set background=dark

" Disable statusline in any mode to replace it with vim-airline
set noshowmode

" Render listchars
set list

" Render white spaces with the specified character
set listchars+=space:⋅

" Render tabs with the specified character
set listchars+=tab:→\ 

" Render preview white spaces with the specified character
set listchars+=trail:·

" Enable cursor blinking
set guicursor+=a:blinkon100

filetype plugin indent on

autocmd FileType html setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType typescript setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType javascriptreact setlocal shiftwidth=2 softtabstop=2 expandtab

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

let g:sonokai_style = 'andromeda'

" let g:sonokai_transparent_background = 1

syntax on
colorscheme sonokai " Or whatever colorscheme you make

" Specify to coc what version of node to use.
let g:coc_node_path = glob('$HOME/.nvm/versions/node/v14.16.0/bin/node')

" +-------------+
" | vim-airline |
" +-------------+

" Enable vim-airline tab
let g:airline#extensions#tabline#enabled = 1

" vim-airline-theme
let g:airline_theme = "sonokai"

" vim-airline tab format
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Enable powerline fonts in vim-airline
let g:airline_powerline_fonts = 1

" +--------------+
" | coc-explorer |
" +--------------+
let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

" +----------------+
" | vim-jsx-pretty |
" +----------------+

let g:vim_jsx_pretty_colorful_config = 1

" +--------------+
" | vim-closetag |
" +--------------+

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,javascript,javascriptreact'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,javascriptreact,javascript'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'javascript': 'jsxRegion',
    \ 'javascriptreact': 'jsxRegion'
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" 
" INDENT LINE
"
let g:indentLine_char = '|'
" let g:indentLine_setColors = 0

" +-----+
" | JSX |
" +-----+

let g:vim_jsx_pretty_colorful_config = 1 " default 0

"
" emmet
"

let g:user_emmet_install_global = 0
autocmd FileType html,css,javascriptreact,javascript EmmetInstall

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF
