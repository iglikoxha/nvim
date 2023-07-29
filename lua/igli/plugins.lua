vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use { 'ellisonleao/gruvbox.nvim' }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function()
            require('lualine').setup({
                options = {
                    theme = 'gruvbox'
                }
            })
        end
    }

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    use({
        'kylechui/nvim-surround',
        tag = '*', -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require('nvim-surround').setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    }

    use('github/copilot.vim')
end)
