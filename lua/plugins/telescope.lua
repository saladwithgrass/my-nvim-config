return {
    'nvim-telescope/telescope.nvim', -- tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
      require("telescope").setup {
        defaults = {
          borderchars =  { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
          theme = "dropdown",
          layout_strategy = "horizontal",
          layout_config = {
            width = 0.8,
            height = 0.8,
          }
        },
        pickers = {
          lsp_references = {
            theme = "dropdown",
            layout_config = {
              width = 0.8,
              height = 0.8,
            }
          },
          find_files = {
            -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
            find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*", "--glob", "!build"},
            theme = "dropdown",
            layout_config = {
              width = 0.8,
              height = 0.8,
            }
		  },
          live_grep = {
            theme = "dropdown",
            layout_config = {
              width = 0.8,
              height = 0.8,
            }
		  },
        }
      }
    end
}
