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
  { "saladwithgrass/pastelfox.nvim" },
  { "saladwithgrass/plants.nvim" },
  {
    -- amongst your other plugins
    -- {'akinsho/toggleterm.nvim', version = "*", config = true}
    -- or
    {'akinsho/toggleterm.nvim', version = "*", opts = {--[[ things you want to change go here]]}}
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
    "rijulpaul/nightblossom.nvim",
    name = "nightblossom",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme nightblossom")
    end,
  },
  {
    "greggh/claude-code.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim", -- Required for git operations
    },
    config = function()
        require("claude-code").setup({
          -- Terminal window settings
          window = {
            split_ratio = 0.3,      -- Percentage of screen for the terminal window (height for horizontal, width for vertical splits)
            position = "vertical",  -- Position of the window: "botright", "topleft", "vertical", "float", etc.
            enter_insert = true,    -- Whether to enter insert mode when opening Claude Code
            hide_numbers = true,    -- Hide line numbers in the terminal window
            hide_signcolumn = true, -- Hide the sign column in the terminal window
            
            -- Floating window configuration (only applies when position = "float")
            float = {
              width = "80%",        -- Width: number of columns or percentage string
              height = "80%",       -- Height: number of rows or percentage string
              row = "center",       -- Row position: number, "center", or percentage string
              col = "center",       -- Column position: number, "center", or percentage string
              relative = "editor",  -- Relative to: "editor" or "cursor"
              border = "rounded",   -- Border style: "none", "single", "double", "rounded", "solid", "shadow"
            },
          },
          -- File refresh settings
          refresh = {
            enable = true,           -- Enable file change detection
            updatetime = 100,        -- updatetime when Claude Code is active (milliseconds)
            timer_interval = 1000,   -- How often to check for file changes (milliseconds)
            show_notifications = true, -- Show notification when files are reloaded
          },
          -- Git project settings
          git = {
            use_git_root = true,     -- Set CWD to git root when opening Claude Code (if in git project)
          },
          -- Shell-specific settings
          shell = {
            separator = '&&',        -- Command separator used in shell commands
            pushd_cmd = 'pushd',     -- Command to push directory onto stack (e.g., 'pushd' for bash/zsh, 'enter' for nushell)
            popd_cmd = 'popd',       -- Command to pop directory from stack (e.g., 'popd' for bash/zsh, 'exit' for nushell)
          },
          -- Command settings
          command = "claude",        -- Command used to launch Claude Code
          -- Command variants
          command_variants = {
            -- Conversation management
            continue = "--continue", -- Resume the most recent conversation
            resume = "--resume",     -- Display an interactive conversation picker

            -- Output options
            verbose = "--verbose",   -- Enable verbose logging with full turn-by-turn output
          },
          -- Keymaps
          keymaps = {
            toggle = {
              normal = "<C-,>",       -- Normal mode keymap for toggling Claude Code, false to disable
              terminal = "<C-,>",     -- Terminal mode keymap for toggling Claude Code, false to disable
              variants = {
                continue = "<leader>cC", -- Normal mode keymap for Claude Code with continue flag
                verbose = "<leader>cV",  -- Normal mode keymap for Claude Code with verbose flag
              },
            },
            window_navigation = true, -- Enable window navigation keymaps (<C-h/j/k/l>)
            scrolling = true,         -- Enable scrolling keymaps (<C-f/b>) for page up/down
          }
        })
    end
  },
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate'
  },
  {
    'https://codeberg.org/esensar/nvim-dev-container',
  }
}
