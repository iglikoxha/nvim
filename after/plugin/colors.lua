-- require('tokyonight').setup({
--     transparent = true
-- })


require('gruvbox').setup({})

vim.cmd.colorscheme('gruvbox')

vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
