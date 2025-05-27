vim.cmd("set termguicolors")

require "config.lazy"
require "config.options"
require "config.mappings"

vim.cmd("colorscheme dawnfox")

require("luasnip.loaders.from_vscode").load({paths = "./my_snippets"})
