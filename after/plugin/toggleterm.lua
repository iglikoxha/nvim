function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }

    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
    vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', {})
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
