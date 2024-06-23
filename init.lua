-- local lspconfig = require('lspconfig')

-- -- TypeScript language server setup
-- lspconfig.tsserver.setup {}

-- lua_ls = {
--     Lua = {
--         workspace = { checkThirdParty = false },
--         telemetry = { enable = false },
--     },
-- }
--

vim.opt.relativenumber = true

require "marc.set"
require "marc.remap"
require "marc.packer"
