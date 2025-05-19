return {
    "nvim-telescope/telescope.nvim",
    opts = function(_, conf)
      conf.defaults.mappings.i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
      }
      conf.pickers = {
        find_files = {
          hidden = true,
          -- Ignore .git directory and other specific directories
          find_command = { "rg", "--files", "--hidden", "-g", "!.git" }
        }
      }
      return conf
    end,
  }
