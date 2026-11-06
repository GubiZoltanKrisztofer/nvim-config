-- Set leader to Space (most popular)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.relativenumber = true
vim.opt.number = true

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.diagnostics")
