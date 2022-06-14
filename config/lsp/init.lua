local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require 'config.lsp.lsp_signature'
require 'config.lsp.lsp_installer'
require 'config.lsp.lsp_handlers'
require 'config.lsp.lsp_null_ls'

local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

lspconfig.sumneko_lua.setup { capabilities = capabilities }
lspconfig.jdtls.setup { capabilities = capabilities }
lspconfig.tsserver.setup { capabilities = capabilities }
