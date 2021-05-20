local config = require('plugins/configurations/lsp-config')

local sumneko_root_path = vim.fn.stdpath('data') .. '/lspinstall/lua'
local sumneko_binary = sumneko_root_path .. '/sumneko-lua-language-server'

-- require'lspconfig'.sumneko_lua.setup {
--   cmd = {sumneko_binary, '-E', sumneko_root_path .. '/main.lua'},
--   settings = {
--     Lua = {
--       runtime = {
--         -- LuaJIT in the case of Neovim
--         version = 'LuaJIT',
--         path = vim.split(package.path, ';')
--       },
--       diagnostics = {
--         -- Get the language server to recognize the `vim` global
--         globals = {'vim'}
--       },
--       workspace = {
--         -- Make the server aware of Neovim runtime files
--         library = {
--           [vim.fn.expand('$VIMRUNTIME/lua')] = true,
--           [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
--         }
--       }
--     }
--   },
--   on_attach = config.on_attach,
--   capabilities = config.capabilities
-- }

local luadev = require('lua-dev').setup({})

luadev.cmd = {sumneko_binary, '-E', sumneko_root_path .. '/main.lua'}
luadev.on_attach = config.on_attach
luadev.capabilities = config.capabilities

-- TODO make luadev documentation works

require('lspconfig').sumneko_lua.setup(luadev)
