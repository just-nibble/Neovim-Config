local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
--

local servers = { "clangd", "rust_analyzer" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- lspconfig.dartls.setup {
--   closingLabels = true,
--   flutterOutline = true,
--   onlyAnalyzeProjectsWithOpenFiles = true,
--   outline = true,
--   suggestFromUnimportedLibraries = true,
--   completeFunctionCalls = true,
--   showTodos = true,
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }
--
