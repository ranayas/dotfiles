-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.format_on_save = true
lvim.lint_on_save = true

-- lvim.colorscheme = "xresources"
-- vim.g.sonokai_style = 'andromeda'
-- vim.g.sonokai_diagnostic_text_highlight = 1
-- vim.g.sonokai_diagnostic_line_highlight = 1
-- vim.g.sonokai_diagnostic_virtual_text = 'colored'
-- vim.g.sonokai_transparent_background = 1

vim.wo.wrap = true
vim.cmd('set list')
vim.cmd('set listchars+=space:⋅') -- Render white spaces with the specified character
vim.cmd('set listchars+=tab:→\\ ') -- Render tabs with the specified character
vim.cmd('set listchars+=trail:·') -- Render preview white spaces with the specified character

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = ","
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = ""
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"
lvim.keys.normal_mode['<A-,>'] = ':BufferPrevious<CR>'
lvim.keys.normal_mode['<A-.>'] = ':BufferNext<CR>'
lvim.keys.normal_mode['<A-<>'] = ':BufferMovePrevious<CR>'
lvim.keys.normal_mode['<A->>'] = ':BufferMoveNext<CR>'
lvim.keys.normal_mode['<A-1>'] = ':BufferGoto 1<CR>'
lvim.keys.normal_mode['<A-2>'] = ':BufferGoto 2<CR>'
lvim.keys.normal_mode['<A-3>'] = ':BufferGoto 3<CR>'
lvim.keys.normal_mode['<A-4>'] = ':BufferGoto 4<CR>'
lvim.keys.normal_mode['<A-5>'] = ':BufferGoto 5<CR>'
lvim.keys.normal_mode['<A-6>'] = ':BufferGoto 6<CR>'
lvim.keys.normal_mode['<A-7>'] = ':BufferGoto 7<CR>'
lvim.keys.normal_mode['<A-8>'] = ':BufferGoto 8<CR>'
lvim.keys.normal_mode['<A-9>'] = ':BufferGoto 9<CR>'
lvim.keys.normal_mode['<A-0>'] = ':BufferLast<CR>'
lvim.keys.normal_mode['<A-c>'] = ':BufferClose<CR>'
lvim.keys.normal_mode['<C-p>'] = ':BufferPick<CR>'
lvim.keys.normal_mode['<Space>bb'] = ':BufferOrderByBufferNumber<CR>'
lvim.keys.normal_mode['<Space>bd'] = ':BufferOrderByDirectory<CR>'
lvim.keys.normal_mode['<Space>bl'] = ':BufferOrderByLanguage<CR>'

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>lua require'telescope'.extensions.project.project{}<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnosticss" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnosticss" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

lvim.builtin.galaxyline.active = false
vim.o.cursorline = false
vim.cmd('set guicursor+=a:blinkon100') -- Enable cursor blinking

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings
-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- set a formatter if you want to override the default lsp one (if it exists)
lvim.lang.javascript.formatters = {
  { exe = "prettier" }
}
lvim.lang.javascript.linters = {
  { exe = "eslint_d" }
}
-- lvim.lang.python.formatters = {
--   {
--     exe = "black",
--     args = {}
--   }
-- }
-- set an additional linter
-- lvim.lang.python.linters = {
--   {
--     exe = "flake8",
--     args = {}
--   }
-- }

-- Additional Plugins
lvim.plugins = {
  {'mattn/emmet-vim'},
  {'blackCauldron7/surround.nvim',
    config = function ()
      require "surround".setup {}
    end
  },
  {'Yagua/nebulous.nvim'},
  {'yonlu/omni.vim'},
  {'sainnhe/sonokai'},
  {
    'hoob3rt/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true,
    },
    config = function ()
      require('lualine').setup {
        options = {
          theme = 'auto'
        }
      }
    end
  },
  {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && yarn install'
  },
  {
    'nekonako/xresources-nvim',
    config = function ()
      require('xresources')
    end
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function ()
      require('colorizer').setup()
    end
  }
--     {"folke/tokyonight.nvim"}, {
--         "ray-x/lsp_signature.nvim",
--         config = function() require"lsp_signature".on_attach() end,
--         event = "InsertEnter"
--     }
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
