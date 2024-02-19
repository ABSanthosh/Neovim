-- TODO: make the vim.g and vim.keymap into local variable


vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Shortcuts
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)         -- open explorer
vim.keymap.set("n", "<C-r>", vim.cmd.so)              -- Save and Shout out
vim.keymap.set("n", "<C-s>", vim.cmd.w)               -- Save

-- Move selected lines
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv")

-- Indent/DeIndent selection
vim.keymap.set("v", "<C-]>", ">gv")
  vim.keymap.set("v", "<C-[>", "<gv")
  vim.keymap.set("v", "<Tab>", ">gv")
-- vim.keymap.set('v', '<Esc><Esc>', ":noh")
-- function() 
--  if vim.api.nvim_get_mode().mode == 'v' then
--    -- Send the escape key to clear the selection
--    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Esc>', true, false, true), 'n', true)
--  end
-- end, { silent = true })

-- Keep Search terms in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- Format code
vim.keymap.set("n", "<S-A-f>", vim.lsp.buf.format)
