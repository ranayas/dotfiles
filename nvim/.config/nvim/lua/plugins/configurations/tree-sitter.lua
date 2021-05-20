require'nvim-treesitter.configs'.setup {
  ensure_installed = 'all', -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true -- false will disable the whole extension
  },
  indent = {enable = true},
  context_commentstring = {enable = true},
  rainbow = {
    enable = true,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = 1000 -- Do not enable for files with more than 1000 lines, int
  },
  autotag = {enable = true}
}
