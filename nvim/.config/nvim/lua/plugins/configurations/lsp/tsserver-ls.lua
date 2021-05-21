local lsp_config = require('plugins/configurations/lsp-config')

local on_attach = function(client, bufnr)
  lsp_config.on_attach(client, bufnr)
  client.resolved_capabilities.document_formatting = false
end

return function(config)
  config.filetypes = {
    'javascript',
    'javascriptreact',
    'javascript.jsx',
    'typescript',
    'typescriptreact',
    'typescript.tsx'
  }
  config.settings = {documentFormatting = false}
  config.on_attach = on_attach
  return config
end
