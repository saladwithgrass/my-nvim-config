  return {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "c", "cpp"
  		},
      highlight = {
        enable = true,
        disable = {"latex", },
      },
  	},
  }
