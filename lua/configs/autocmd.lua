local latex_mappings = function()
  local map = vim.keymap.set
  map("n", "<leader>ll", "<cmd> VimtexTocOpen <CR>")
  map("n", "<leader>lv", "<cmd> VimtexView <CR>")
  map("n", "<leader>lc", "<cmd> VimtexCompile <CR>")
  print("latex mode activated")
end

vim.api.nvim_create_autocmd({"BufEnter"},
  {
    callback = latex_mappings,
    once = true
  }
)
