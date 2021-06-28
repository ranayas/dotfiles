vim.o.termguicolors = true
vim.go.t_Co = '256'
vim.o.updatetime = 300
vim.o.hidden = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.ignorecase = true
vim.o.background = 'dark'
vim.o.cmdheight = 2
vim.o.showmode = false
vim.o.fileencoding = 'utf-8' -- The encoding written to file
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
vim.bo.smartindent = true -- Makes indenting smart
vim.wo.wrap = true
vim.cmd('set list')
-- vim.cmd('set listchars+=space:⋅') -- Render white spaces with the specified character
vim.cmd('set listchars+=tab:→\\ ') -- Render tabs with the specified character
-- vim.cmd('set listchars+=trail:·') -- Render preview white spaces with the specified character
vim.cmd('set guicursor+=a:blinkon100') -- Enable cursor blinking
vim.cmd('syntax on') -- syntax highlighting
vim.cmd('set iskeyword+=-') -- treat dash separated words as a word text object"
vim.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
vim.cmd('set inccommand=split') -- Make substitution work in realtime
vim.cmd('set number')
vim.cmd('set wrap linebreak')
