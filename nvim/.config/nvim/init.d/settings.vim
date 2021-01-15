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

" Disable statusline in any mode to replace it with vim-airline
set noshowmode

" Adjust default color groups to dark
set background=dark

" Render listchars
set list

" Render white spaces with the specified character
set listchars+=space:⋅

" Render tabs with the specified character
set listchars+=tab:→\ 

" Render preview white spaces with the specified character
set listchars+=trail:·

filetype plugin indent on

"autocmd FileType html setlocal shiftwidth=2 softtabstop=2 expandtab
"autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab
"autocmd FileType typescript setlocal shiftwidth=2 softtabstop=2 expandtab
"autocmd FileType php setlocal shiftwidth=2 softtabstop=2 expandtab
"
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

" Specify to coc what version of node to use.
let g:coc_node_path = '$HOME/.nvm/versions/node/v14.15.0/bin/node'

let g:palenight_color_overrides = {
\    'black': { 'gui': '#1a1b26', "cterm": "0", "cterm16": "0" },
\}

let g:palenight_terminal_italics=1

colorscheme palenight

" +-------------+
" | vim-airline |
" +-------------+

" Enable vim-airline tab
let g:airline#extensions#tabline#enabled = 1

" vim-airline-theme
let g:airline_theme = "tokyonight"

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

" +--------------+
" | coc-prettier |
" +--------------+

command! -nargs=0 Prettier :CocCommand prettier.formatFile

" +----------------+
" | vim-jsx-pretty |
" +----------------+

let g:vim_jsx_pretty_colorful_config = 1

" +--------------+
" | vim-closetag |
" +--------------+

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.

" let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js, *.jsx"'
" 
" " filenames like *.xml, *.xhtml, ...
" " This will make the list of non-closing tags self-closing in the specified files.
" 
" let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.html,*.js'
" 
" " filetypes like xml, html, xhtml, ...
" " These are the file types where this plugin is enabled.
" 
" let g:closetag_filetypes = 'html,xhtml,phtml,javascript, javascriptreact'
" 
" " filetypes like xml, xhtml, ...
" " This will make the list of non-closing tags self-closing in the specified files.
" 
" let g:closetag_xhtml_filetypes = 'xhtml,jsx,javascript,html, javascriptreact'
" 
" " integer value [0|1]
" " This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
" 
" let g:closetag_emptyTags_caseSensitive = 1
" 
" " dict
" " Disables auto-close if not in a "valid" region (based on filetype)
" 
" let g:closetag_regions = {
"     \ 'typescript.tsx': 'jsxRegion,tsxRegion',
"     \ 'javascript.jsx': 'jsxRegion',
"     \ 'javascript': 'jsxRegion',
"     \ 'javascript.js': 'jsxRegion',
"     \ 'javascriptreact': 'jsxRegion',
"     \ }

" Shortcut for closing tags, default is '>'

let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''

let g:closetag_close_shortcut = '<leader>>'

" +------------------+
" | markdown-preview |
" +------------------+


" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

" INDENT LINE
let g:indentLine_char = '|'
" let g:indentLine_setColors = 0

" +-----+
" | JSX |
" +-----+

let g:vim_jsx_pretty_colorful_config = 1 " default 0
