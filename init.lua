vim.cmd "set termguicolors"

require "config.mappings"
require "config.lazy"
require "config.options"
require "config.plugin_mappings"

-- require('nvim-docker')

vim.api.nvim_create_user_command("Format", function(args)
  local range = nil
  if args.count ~= -1 then
    local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
    range = {
      start = { args.line1, 0 },
      ["end"] = { args.line2, end_line:len() },
    }
  end
  require("conform").format { async = true, lsp_format = "fallback", range = range }
end, { range = true })

require("langmapper").automapping { global = true, buffer = true }
-- vim.cmd('colorscheme unokai')
-- end of init.lua
