return {
  { "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup({}, {
	        RGB      = true;         -- #RGB hex codes
	        RRGGBB   = true;         -- #RRGGBB hex codes
	        names    = true;         -- "Name" codes like Blue
	        RRGGBBAA = false;        -- #RRGGBBAA hex codes
	        rgb_fn   = true;        -- CSS rgb() and rgba() functions
	        hsl_fn   = false;        -- CSS hsl() and hsla() functions
	        css      = false;        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
	        css_fn   = true;        -- Enable all CSS *functions*: rgb_fn, hsl_fn
	        mode     = 'background'; -- Set the display mode. 
      })
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
      vim.g.vimtex_fold_enabled = true
      vim.g.vimtex_quickfix_open_on_warning = false

    end
  },
  { "EdenEast/nightfox.nvim" }
}
