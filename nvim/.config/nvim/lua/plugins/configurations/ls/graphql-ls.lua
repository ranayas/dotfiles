local config = require('plugins/configurations/lsp-config')

local graphqlLsp = vim.fn.stdpath('data') ..
                     '/lspinstall/graphql/node_modules/.bin/graphql-lsp'

require'lspconfig'.graphql.setup {
  cmd = {graphqlLsp, 'server', '-m', 'stream'},
  on_attach = config.on_attach,
  capabilities = config.capabilities
}
