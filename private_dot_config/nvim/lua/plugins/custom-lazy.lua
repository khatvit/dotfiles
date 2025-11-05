vim.g.snacks_animate = false
return {
  {
    "ibhagwan/fzf-lua",
    opts = function(_, opts)
      opts.fzf_opts = vim.tbl_deep_extend("force", opts.fzf_opts or {}, {
        ["--literal"] = true, -- disable regex
        ["--algo"] = "v2", -- smarter fuzzy scoring
        ["--exact"] = false, -- allow partial fuzzy match
      })
      opts.git = vim.tbl_deep_extend("force", opts.git or {}, {
        commits = {
          preview_pager = "difft",
          cmd = "git log --color --pretty=format:'%C(yellow)%h%Creset %Cgreen(%><(12)%cr%><|(12))%Creset %s %C(blue)<%an>%Creset' <file>",
        },
        bcommits = { -- For buffer commits (if you use that)
          preview_pager = "difft",
        },
      })
      return opts
    end,
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        python = { "mypy" },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = {
          enabled = true,
        },
      },
    },
  },
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
