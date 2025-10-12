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
  {
    'saladwithgrass/plants.nvim',
    lazy = false,
    priority = 1000,
    ---@type plants.config
    opts = {},
    config = function(_, opts)
      vim.o.termguicolors = true
      -- vim.o.background = 'light'
      require('plants').setup(opts)
    end,
  },
  { "EdenEast/nightfox.nvim" },
  {
    'akinsho/toggleterm.nvim', 
    version = "*", 
    opts = {--[[ things you want to change go here]]}
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  {
     "amitds1997/remote-nvim.nvim",
     version = "*", -- Pin to GitHub releases
     dependencies = {
         "nvim-lua/plenary.nvim", -- For standard functions
         "MunifTanjim/nui.nvim", -- To build the plugin UI
         "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
     },
     config = true,
  },
  {
      'windwp/nvim-autopairs',
      event = "InsertEnter",
      config = true
      -- use opts = {} for passing setup options
      -- this is equivalent to setup({}) function
  }
}
