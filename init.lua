vim.cmd("set termguicolors")

require "config.mappings"
require "config.lazy"
require "config.options"
require "config.plugin_mappings"

vim.cmd("colorscheme nordfox")
require('nvim-docker')

-- for key, value in pairs(conts) do
--     print(key, value)
-- end

-- code
require('langmapper').automapping({ global = true, buffer = true })


-- end of init.lua
