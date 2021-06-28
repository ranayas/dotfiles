vim.g.indent_blankline_char = '▏'
vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_context_patterns =
  {
    'class',
    'function',
    'method',
    '^if',
    '^while',
    '^for',
    '^object',
    '^table',
    'block'
  }
-- vim.g.indent_blankline_char_highlight_list =
--   {'Function', 'Type', 'String', 'Comment', 'Number'}
