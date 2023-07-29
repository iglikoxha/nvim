vim.g.mapleader = ' '

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

keymap('n', '<S-l>', ':bnext<CR>', opts)
keymap('n', '<S-h>', ':bprevious<CR>', opts)

keymap('i', 'jk', '<ESC>', opts)
keymap('i', 'kj', '<ESC>', opts)

keymap('n', '<leader>e', ':Ex<CR>', opts)
