require('tokyonight').setup({
    transparent = true
})

require('gruvbox').setup({
    contrast = 'hard',
    palette_overrides = {
        gray = '#2ea542',
    }
})

vim.cmd.colorscheme('gruvbox')

vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

require('lualine').setup {
    options = { theme = 'gruvbox' }
}

vim.opt.termguicolors = true
require('bufferline').setup{
    options = {
        buffer_close_icon = "",
    }
}
