require("config.options")
require("config.lazy")

require("config.telescope-fused")
require("config.mappings")
require("config.barbar_mappings")

--require('lspconfig').pyright.setup{}

require("lsp")

vim.lsp.enable('pyright')
vim.lsp.enable('texlab')
vim.lsp.enable('clangd')
