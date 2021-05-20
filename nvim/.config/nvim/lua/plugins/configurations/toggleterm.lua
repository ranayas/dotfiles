require('toggleterm').setup {
  open_mapping = [[<leader>t]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 10, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
  start_in_insert = false,
  direction = 'horizontal', -- | 'horizontal' | 'window' | 'float',
  close_on_exit = true,
  shell = vim.o.shell
}
