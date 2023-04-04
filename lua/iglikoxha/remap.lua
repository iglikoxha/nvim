vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<leader>e', ':Ex<CR>', { desc = 'Explorer' })
vim.api.nvim_set_keymap('n', '<leader>n', ':tabnew<CR>', { desc = 'New Tab' })
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit Terminal Mode' })
vim.api.nvim_set_keymap('n', '<C-l>', '<F3>', { desc = 'Format Code' })
