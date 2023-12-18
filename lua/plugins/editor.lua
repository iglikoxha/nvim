return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      local configs = require('nvim-treesitter.configs')
      configs.setup({
        ensure_installed = { 'c', 'cpp', 'lua',
          'markdown', 'python', 'hcl', 'terraform', 'dockerfile',
          'json', 'yaml', 'toml', 'bash', 'html', 'css',
          'javascript', 'typescript', 'go', 'rust'
        },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end
  },
  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      vim.keymap.set('n', '<leader>xx', function() require('trouble').toggle() end)
      vim.keymap.set('n', '<leader>xw', function() require('trouble').toggle('workspace_diagnostics') end)
      vim.keymap.set('n', '<leader>xd', function() require('trouble').toggle('document_diagnostics') end)
      vim.keymap.set('n', '<leader>xq', function() require('trouble').toggle('quickfix') end)
      vim.keymap.set('n', '<leader>xl', function() require('trouble').toggle('loclist') end)
      vim.keymap.set('n', 'gR', function() require('trouble').toggle('lsp_references') end)
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    config = true
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
    config = true
  },
  {
    'windwp/nvim-autopairs',
    config = true
  },
  {
    'kylechui/nvim-surround',
    config = true
  },
  {
    'numToStr/Comment.nvim',
    config = true
  }
}
