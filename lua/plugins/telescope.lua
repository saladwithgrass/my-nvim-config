return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      telescope = require("telescope")
      telescope.setup({
        defaults = {
          layout_strategy = 'horizontal',
          borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" }
        },
      })
    end
  }
