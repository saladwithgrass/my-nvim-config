local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- Telescope -- 
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, { desc = 'Telescope lsp refrences' })

-- Lsp
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })

-- Barbar.nvim -- 
map('n', '<S-Tab>', '<cmd>BufferPrevious<CR>', opts)
map('n', '<Tab>', '<cmd>BufferNext<CR>', opts)
map('n', '<C-b>',   '<cmd>BufferPick<CR>', opts)
map('n', '<leader>x',   '<cmd>BufferClose<CR>', opts)

