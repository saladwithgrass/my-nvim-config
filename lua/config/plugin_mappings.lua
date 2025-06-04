local opts = { noremap = true, silent = true }
local map = vim.keymap.set
-- Telescope -- 

local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fw', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
-- Lsp
map('n', '<leader>fr', builtin.lsp_references, { desc = 'Telescope lsp refrences' })

map('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })

-- Barbar.nvim -- 
map('n', '<S-Tab>', '<cmd>BufferPrevious<CR>', opts)
map('n', '<Tab>', '<cmd>BufferNext<CR>', opts)
map('n', '<C-b>',   '<cmd>BufferPick<CR>', opts)
map('n', '<leader>x',   '<cmd>BufferClose<CR>', opts)

-- Toggle Term
map({'n', 't', 'v'}, '<A-l>', '<cmd>ToggleTerm direction=vertical<cr>', opts)
map({'n', 't', 'v'}, '<A-h>', '<cmd>ToggleTerm direction=horizontal<cr>', opts)
map({'n', 't', 'v'}, '<A-f>', '<cmd>ToggleTerm direction=float<cr>', opts)
