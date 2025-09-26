vim.g.snacks_animate = false
return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
      },

      completion = {
        ghost_text = {
          enabled = false,
        },
      },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
    },
  },
  {
    "nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      picker = {
        grep = {
          regex = false,
        },
        win = {
          list = {
            keys = {
              ["<Tab>"] = { "list_down", mode = { "i", "n" } },
              ["<STab>"] = { "list_up", mode = { "i", "n" } },
              ["<c-p>"] = { "select_and_prev", mode = { "i", "n" } },
              ["<c-n>"] = { "select_and_next", mode = { "i", "n" } },
            },
          },
        },
        -- your picker configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
    },
  },
  {
    "catppuccin/nvim",
    opts = {
      transparent_background = true,
      flavour = "mocha",
    },
  },
}
