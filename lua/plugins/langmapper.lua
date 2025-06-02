-- DEFINE RUSSIAN REMAP
local function escape(str)
  -- You need to escape these characters to work correctly
  local escape_chars = [[;,."|\]]
  return vim.fn.escape(str, escape_chars)
end

-- Recommended to use lua template string
local en = [[`qwertyuiop[]asdfghjkl;'zxcvbnm]]
local ru = [[ёйцукенгшщзхъфывапролджэячсмить]]
local en_shift = [[~QWERTYUIOP{}ASDFGHJKL:"ZXCVBNM<>]]
local ru_shift = [[ËЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ]]

local ru_shift_num = [[!"№;%:?*()]]
local en_shift_num = [[!@#$%^&*()]]

vim.opt.langmap = vim.fn.join({
    -- | `to` should be first     | `from` should be second
    escape(ru_shift) .. ';' .. escape(en_shift),
    escape(ru) .. ';' .. escape(en),
    -- escape(ru_shift_num) .. ';' .. escape(en_shift_num)
}, ',')

-- DEFINE CONFIGURATION FOR THIS PLUGIN
local my_config = {
  map_all_ctrl = true,
  ctrl_map_modes = { 'n', 'o', 'i', 'c', 't', 'v' },
  hack_keymap = true,
  disable_hack_modes = { 'i' },
  automapping_modes = { 'n', 'v', 'x', 's' },
  default_layout = [[ABCDEFGHIJKLMNOPQRSTUVWXYZ<>:"{}~abcdefghijklmnopqrstuvwxyz,.;'[]`]],
  use_layouts = {},

  custom_desc = nil,
  -- custom_desc = function (_, _, _)
  --   return "which_key_ignore"
  -- end,

  layouts = {
    ru = {
      id = 'ru',
      layout = 'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯБЮЖЭХЪËфисвуапршолдьтщзйкыегмцчнябюжэхъё',
      default_layout = nil,
    },
  },
  os = {
    Linux = {
      get_current_layout_id = function()
        local cmd = 'get-lang'
        if vim.fn.executable(cmd) then
          local output = vim.split(vim.trim(vim.fn.system(cmd)), '\n')
          return output[#output]
        end
      end,
    },
  },
}

-- INCLUDE THE PLUGIN SPEC
return {
  {
    'Wansmer/langmapper.nvim',
    lazy = false,
    priority = 10, -- High priority is needed if you will use `autoremap()`
    config = function()
      require('langmapper').setup(my_config)
    end,
  },
}
