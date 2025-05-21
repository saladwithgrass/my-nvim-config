local opt = vim.opt
local o = vim.o
local g = vim.g

o.clipboard = "unnamedplus"
o.cursorline = true
o.cursorlineopt = "number,line"

opt.showcmd = false
opt.showmode = false
opt.shortmess:append("c")

-- Indenting
o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2

opt.fillchars = { eob = " " }
o.ignorecase = true
o.smartcase = true
o.mouse = "a"

opt.termguicolors = true

opt.number = true
opt.relativenumber = true
o.ruler = false

opt.ignorecase = true
opt.smartcase = true

o.signcolumn ='yes:1'
vim.diagnostic.config {
  virtual_text = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "󱓻",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.HINT] = "󰌵",
    }
  }
}
