-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.root_spec = { "cwd" } -- Always use CWD, don't detect roots
vim.g.lazyvim_python_lsp = "pyright"
vim.opt.timeoutlen = 200 -- default is 1000ms (1 second!)
vim.opt.ttimeoutlen = 10 -- for key codes, keep this low
