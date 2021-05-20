local which_key = require('which-key')

which_key.setup({triggers_blacklist = {i = {'i'}, t = {'i'}}})

vim.g.mapleader = ','
vim.api.nvim_set_keymap('i', 'ii', '<Esc>', {noremap = true})
vim.api.nvim_set_keymap('n', '<A-,>', ':BufferPrevious<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-.>', ':BufferNext<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-<>', ':BufferMovePrevious<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A->>', ':BufferMoveNext<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-1>', ':BufferGoto 1<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-2>', ':BufferGoto 2<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-3>', ':BufferGoto 3<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-4>', ':BufferGoto 4<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-5>', ':BufferGoto 5<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-6>', ':BufferGoto 6<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-7>', ':BufferGoto 7<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-8>', ':BufferGoto 8<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-9>', ':BufferLast<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-c>', ':BufferClose<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-s>', ':BufferPick<CR>',
                        {noremap = true, silent = true})
vim.cmd('tnoremap ii <C-\\><C-n>')

which_key.register({
  e = {':NvimTreeToggle<CR>', 'toggle explorer'},
  f = {
    name = 'find',
    b = {'<cmd>lua require(\'telescope.builtin\').buffers()<cr>', 'buffers'},
    f = {
      '<cmd>lua require(\'telescope.builtin\').find_files({follow = true})<cr>',
      'files'
    },
    g = {
      '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>',
      'whit live grep'
    },
    h = {'<cmd>lua require(\'telescope.builtin\').help_tags()<cr>', 'help tags'}
  },
  ['t'] = 'toggle terminal'
}, {
  mode = 'n', -- NORMAL mode
  prefix = '<leader>',
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false -- use `nowait` when creating keymaps
})
