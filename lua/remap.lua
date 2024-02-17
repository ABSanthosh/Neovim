-- local telescope = require("telescope")

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Shortcuts
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)         -- open explorer
-- vim.keymap.set("n", "<C-b>", telescope.file_browser)         -- open explorer
vim.keymap.set("n", "<C-r>", vim.cmd.so)              -- Save and Shout out
vim.keymap.set("n", "<C-s>", vim.cmd.w)               -- Save 
