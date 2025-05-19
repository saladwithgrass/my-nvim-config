vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "
vim.g.maplocalleadder = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },
  -- {"neovim/nvim-lspconfig"},

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
  require "configs.autocmd"
end)

vim.lsp.enable('texlab')
vim.lsp.enable('pyright')
vim.lsp.enable('clangd')

vim.lsp.config['texlab'] = {
  cmd = { "texlab" },
  filetypes = { 'tex', 'bib' }
}

vim.g.vimtex_quickfix_open_on_warning = 0
vim.g.vimtex_toc_config.indent_levels = 1
vim.g.vimtex_toc_config.hotkeys_enabled = 0
-- local lspconfig = require("lspconfig")
-- lspconfig.texlab.setup {}

--require'lspconfig'.lua_ls.setup {
--  on_init = function(client)
--    local path = client.workspace_folders[1].name
--    if vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc') then
--      return
--    end
--
--    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
--      runtime = {
--        version = 'LuaJIT'
--      },
--      -- Make the server aware of Neovim runtime files
--      workspace = {
--        checkThirdParty = false,
--        library = {
--          vim.env.VIMRUNTIME
--        }
--      }
--    })
--  end,
--  settings = {
--    Lua = {}
--  }
--}
