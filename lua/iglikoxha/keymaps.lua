local opts = { noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap

keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

keymap('n', '<leader>e', ':Ex<CR>', opts)

keymap('n', '+', ':resize +2<CR>', opts)
keymap('n', '_', ':resize -2<CR>', opts)
keymap('n', '<', ':vertical resize -2<CR>', opts)
keymap('n', '>', ':vertical resize +2<CR>', opts)

keymap('n', '<S-l>', ':bnext<CR>', opts)
keymap('n', '<S-h>', ':bprevious<CR>', opts)

keymap('i', 'jk', '<ESC>', opts)
keymap('i', 'kj', '<ESC>', opts)

keymap('n', '<A-j>', '<Esc>:m .+1<CR>==gi', opts)
keymap('n', '<A-k>', '<Esc>:m .-2<CR>==gi', opts)
