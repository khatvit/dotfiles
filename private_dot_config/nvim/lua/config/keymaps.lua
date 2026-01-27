-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<M-[>", "<C-o>", { desc = "Jump back" })
vim.keymap.set("n", "<M-]>", "<C-i>", { desc = "Jump forward" })

vim.keymap.set("n", "<leader>gha", function()
  Snacks.picker.gh_actions()
end, { desc = "GitHub Actions" })

vim.keymap.set("n", "<leader>ghP", function()
  Snacks.picker.gh_pr()
end, { desc = "GitHub PRs" })

vim.keymap.set("n", "<leader>Vc", function()
  require("custom.vise").gh_runs_master_push()
end, { desc = "GitHub Runs (master/push)" })
