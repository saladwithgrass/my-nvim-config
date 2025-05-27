vim.cmd("set termguicolors")

require "config.lazy"
require "config.options"
require "config.mappings"

require("luasnip.loaders.from_vscode").load({paths = "./my_snippets"})
