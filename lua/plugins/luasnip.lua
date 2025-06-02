local setup = function()
  require("luasnip").setup()
  require("luasnip.loaders.from_vscode").load({paths = "./my_snippets"})
end
return {
	"L3MON4D3/LuaSnip",
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	build = "make install_jsregexp",
  config = setup
}
