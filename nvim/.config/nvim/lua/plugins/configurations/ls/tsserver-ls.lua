local config = require('plugins/configurations/lsp-config')

local on_attach = function(client, bufnr)
  config.on_attach(client, bufnr)
  client.resolved_capabilities.document_formatting = false
end

local ts_ls = vim.fn.stdpath('data') ..
                '/lspinstall/typescript/node_modules/.bin/typescript-language-server'

require'lspconfig'.tsserver.setup {
  cmd = {ts_ls, '--stdio'},
  filetypes = {
    'javascript',
    'javascriptreact',
    'javascript.jsx',
    'typescript',
    'typescriptreact',
    'typescript.tsx'
  },
  settings = {documentFormatting = false},
  on_attach = on_attach,
  capabilities = config.capabilities
}
