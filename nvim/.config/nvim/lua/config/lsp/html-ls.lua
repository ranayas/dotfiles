local on_attach = require'config/lsp-config'.make_config().on_attach

return function(config)
  config.on_attach = function(client, bufnr)
    on_attach(client, bufnr)
    client.resolved_capabilities.document_formatting = false
    client.resolved_capabilities.document_range_formatting = false
  end
  config.settings = {documentFormatting = false}
end
