return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      transparent_mode = true,
    },
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      transparent = true,
    },
  },
  {
    "ydkulks/cursor-dark.nvim",
    lazy = false,

    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("cursor-dark-midnight")
      require("cursor-dark").setup({
        -- For theme
        style = "dark",

        -- For a transparent background
        -- transparent = true,
        -- If you have dashboard-nvim plugin installed
        dashboard = true,
      })
    end,
  },
}
