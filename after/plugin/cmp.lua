local cmp = require('cmp')

cmp.setup {
    mapping = cmp.mapping.preset.insert({
        ["<C-CR>"] = cmp.mapping.confirm({ select = true }),
    }),
}
