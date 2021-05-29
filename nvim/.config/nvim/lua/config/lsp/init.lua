-- lsp-install
local function setup_servers()
  require'lspinstall'.setup()

  -- get all installed servers
  local servers = require'lspinstall'.installed_servers()
  -- ... and add manually installed servers
  -- table.insert(servers, "clangd")
  -- table.insert(servers, "sourcekit")

  for _, server in pairs(servers) do
    local config = require('config/lsp-config').make_config()

    -- language specific config
    if server == 'lua' then require('config/lsp/lua-ls')(config) end

    if server == 'efm' then require('config/lsp/efm-ls')(config) end

    if server == 'typescript' then require('config/lsp/tsserver-ls')(config) end

    if server == 'diagnosticls' then
      require('config/lsp/diagnosticls-ls')(config)
    end

    if server == 'html' then require('config/lsp/html-ls')(config) end

    require'lspconfig'[server].setup(config)
  end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function()
  setup_servers() -- reload installed servers
  vim.cmd('bufdo e') -- this triggers the FileType autocmd that starts the server
end
