-- this line for types, by hovering and autocompletion (lsp required)
-- will help you understanding properties, fields, and what highlightings the color used for
---@type Base46Table
local M = {}
-- UI
M.base_30 = {
  white = "#F0E4F6",
  black = "#F0E4F6", -- usually your theme bg
  darker_black = "#F1EAF8", -- 6% darker than black
  black2 = "#ABA0D0", -- 6% lighter than black
  one_bg = "#ABA0D0", -- 10% lighter than black
  one_bg2 = "#ABA0D0", -- 6% lighter than one_bg2
  one_bg3 = "#ABA0D0", -- 6% lighter than one_bg3
  grey = "#DEC4DF", -- 40% lighter than black (the % here depends so choose the perfect grey!)
  grey_fg = "#ABA0D0", -- 10% lighter than grey
  grey_fg2 = "#ABA0D0", -- 5% lighter than grey
  light_grey = "#ABA0D0",
  red = "#C94E6B",
  baby_pink = "#EAD8F2",
  pink = "#E664C2",
  line = "#ABA0D0", -- 15% lighter than black
  green = "#53C4A1",
  vibrant_green = "#A6E3A1",
  nord_blue = "#817EA7",
  blue = "#5668AE",
  seablue = "#5673A1",
  yellow = "#FFD865", -- 8% lighter than yellow
  sun = "#FBAF81",
  purple = "#ABA0D0",
  dark_purple = "#6B6090",
  teal = "#74C7EC",
  orange = "#FBAF81",
  cyan = "#74C7EC",
  statusline_bg = "#F0E4F6",
  lightbg = "#F0E4F6",
  pmenu_bg = "#F0E4F6",
  folder_bg = "#F0E4F6"
}

-- check https://github.com/chriskempson/base16/blob/master/styling.md for more info
M.base_16 = {
  base00 = "#F0E4F6",
  base01 = "#6B6090",
  base02 = "#6B6090",
  base03 = "#6B6090",
  base04 = "#6B6090",
  base05 = "#6B6090",
  base06 = "#6B6090",
  base07 = "#6B6090",
  base08 = "#6B6090",
  base09 = "#6B6090",
  base0A = "#6B6090",
  base0B = "#6B6090",
  base0C = "#6B6090",
  base0D = "#6B6090",
  base0E = "#6B6090",
  base0F = "#6B6090"
}

-- OPTIONAL
-- overriding or adding highlights for this specific theme only
-- defaults/treesitter is the filename i.e integration there,

M.polish_hl = {
  defaults = {
    Comment = {
      bg = "#ffffff", -- or M.base_30.cyan
      italic = true,
    },
  },

  treesitter = {
    ["@variable"] = { fg = "#000000" },
  },
}

-- set the theme type whether is dark or light
M.type = "light" -- "or light"

-- this will be later used for users to override your theme table from chadrc
M = require("base46").override_theme(M, "abc")

return M
