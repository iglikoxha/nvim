local builtin = require('telescope.builtin')

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set('n', '<leader>ff', builtin.find_files, opts)
keymap.set('n', '<leader>fg', builtin.live_grep, opts)
keymap.set('n', '<leader>fb', builtin.buffers, opts)
keymap.set('n', '<leader>fh', builtin.help_tags, opts)
