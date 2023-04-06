local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })

    vim.keymap.set('n', '<space>d', vim.diagnostic.open_float)
    vim.api.nvim_set_keymap('n', '<C-l>', '<F3>', {})
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})

local cmp = require('cmp')

cmp.setup {
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
}
