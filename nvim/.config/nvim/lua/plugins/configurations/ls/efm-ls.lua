local config = require('plugins/configurations/lsp-config')

local efm_langserver = vim.fn.stdpath('data') ..
                         '/lspinstall/efm/efm-langserver'

require'lspconfig'.efm.setup {
  cmd = {efm_langserver},
  init_options = {documentFormatting = true, codeAction = false},
  filetypes = {'lua'},
  settings = {
    rootMarkers = {'.git/'},
    languages = {
      lua = {
        {
          formatCommand = 'lua-format --indent-width=2' ..
            ' --double-quote-to-single-quote --chop-down-table' ..
            ' --chop-down-parameter --continuation-indent-width=2 -i',
          formatStdin = true
        }
      }
    }
  },
  on_attach = config.on_attach,
  capabilities = config.capabilities
}
