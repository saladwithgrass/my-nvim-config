return {
    'nvim-telescope/telescope.nvim', -- tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
      require("telescope").setup {
        defaults = {
          borderchars =  { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
        },
        pickers = {
          lsp_references = {
            theme = "dropdown"
          },
          find_files = {
			      -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
			      find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*", "--glob", "!build"},
		      },
        }
      }
    end
}
