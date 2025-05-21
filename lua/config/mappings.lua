vim.g.mapleader = " "

map = vim.keymap.set

--Remap navigation
map({"n", "i", "v"}, "<C-h>", "<C-w>h")
map({"n", "i", "v"}, "<C-j>", "<C-w>j")
map({"n", "i", "v"}, "<C-k>", "<C-w>k")
map({"n", "i", "v"}, "<C-l>", "<C-w>l")

--Find files
map("n", "ff", ":Telescope find_files<CR>")
--Live grep
map("n", "fw", ":Telescope live_grep<CR>")
--Search in buffers
map("n", "fb", ":Telescope buffers<CR>")

--Window navigation
map({"n", "i", "t", "v"}, "<C-h>", "<C-w>h")
map({"n", "i", "t", "v"}, "<C-j>", "<C-w>j")
map({"n", "i", "t", "v"}, "<C-k>", "<C-w>k")
map({"n", "i", "t", "v"}, "<C-l>", "<C-w>l")
