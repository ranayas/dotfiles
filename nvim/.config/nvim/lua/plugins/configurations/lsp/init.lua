local lspinstall = require 'lspinstall'

-- lsp-install
local function setup_servers()
  lspinstall.setup()

  -- get all installed servers
  local servers = lspinstall.installed_servers()
  -- ... and add manually installed servers
  -- table.insert(servers, "clangd")
  -- table.insert(servers, "sourcekit")

  for _, server in pairs(servers) do
    local config = require 'plugins/configurations/lsp-config'

    -- language specific config
    if server == 'lua' then
      config = require 'plugins/configurations/lsp/lua-ls'(config)
    end

    if server == 'efm' then
      config = require 'plugins/configurations/lsp/efm-ls'(config)
    end

    if server == 'typescript' then
      config = require 'plugins/configurations/lsp/tsserver-ls'(config)
    end

    if server == 'diagnosticls' then
      config = require 'plugins/configurations/lsp/diagnosticls-ls'(config)
    end

    require'lspconfig'[server].setup(config)
  end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
lspinstall.post_install_hook = function()
  setup_servers() -- reload installed servers
  vim.cmd('bufdo e') -- this triggers the FileType autocmd that starts the server
end
