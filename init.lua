local lspconfig = require('lspconfig')

-- TypeScript language server setup
lspconfig.tsserver.setup{}

lua_ls = {
  Lua = {
    workspace = { checkThirdParty = false },
    telemetry = { enable = false },
  },
}

require "marc.set"
require "marc.remap"
require "marc.packer"

