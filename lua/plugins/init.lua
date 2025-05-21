return {
  {
    "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end
  },
  {
    "lervag/vimtex",
    lazy = false,     -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_toc_config  = {
        hide_line_numbers = false,
        layer_status = {
          content = 1,
          label = 0,
          todo = 1,
          include = 0
        },
        layer_keys = {
          content = 'C',
          label = 'B',
          todo =  'T',
          include = 'I'
        }
      }
    end
  },
  {
    'maxmx03/solarized.nvim',
    lazy = false,
    priority = 1000,
    ---@type solarized.config
    opts = {},
    config = function(_, opts)
      vim.o.termguicolors = true
      vim.o.background = 'light'
      require('solarized').setup(opts)
      vim.cmd.colorscheme 'solarized'
    end,
  }
}
