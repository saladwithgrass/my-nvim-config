local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local map = vim.keymap.set

--Remap space as leader key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
--vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

map("n", ";", ":", opts)
map("n", "<leader>e", ":Lex 30<cr>", opts)
map("n", "<esc>", "<cmd>silent! nohls<cr>", opts)

-- Better movement
map("n", "L", "Hzz", opts)
map("n", "H", "Lzz", opts)
map("n", "zl", "za", opts)
-- map("n", "J", "Jzz", opts)
-- map("n", "K", "Kzz", opts)

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
map("n", "<S-Tab>", ":bnext<CR>", opts)
map("n", "<Tab>", ":bprevious<CR>", opts)
map("n", "gb", "<C-6>", opts)

-- Move text up and down

-- Visual --
-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Move text up and down
map("v", "<A-j>", ":m .+1<CR>==", opts)
map("v", "<A-k>", ":m .-2<CR>==", opts)
map("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
map("x", "J", ":move '>+1<CR>gv-gv", opts)
map("x", "K", ":move '<-2<CR>gv-gv", opts)
map("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
map("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
map("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
map("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
map("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
map("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Diagnostics --
map("n", "<leader>h", vim.diagnostic.open_float, opts)

