vim.cmd("set termguicolors")

require "config.mappings"
require "config.lazy"
require "config.options"
require "config.plugin_mappings"

vim.cmd("colorscheme dawnfox")
-- code
require('langmapper').automapping({ global = true, buffer = true })
-- end of init.lua
