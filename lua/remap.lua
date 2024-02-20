-- TODO: make the vim.g and vim.keymap into local variable

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Shortcuts
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open NetRW" })
vim.keymap.set("n", "<C-r>", function() 
  vim.cmd.w()
  vim.cmd.so()
end, { desc = "Save and Shout out" })

vim.keymap.set("n", "<C-s>", vim.cmd.w, { desc = "Save the file" })
vim.keymap.set("v", "<leader>d", "\"_d", { desc = "Delete without cutting" })

-- Move selected lines
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection down" })

vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Indent/DeIndent selection
vim.keymap.set("v", "<C-]>", ">gv", { desc = "Add indent" })
vim.keymap.set("v", "<C-[>", "<gv", { desc = "Remove indent" })
vim.keymap.set("v", "<Tab>", ">gv", { desc = "Add indent" })

-- Keep Search terms in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- Format code
vim.keymap.set("n", "<S-A-f>", vim.lsp.buf.format)

-- Cycle buffer
vim.keymap.set("n", "<C-i>", vim.cmd.bnext)
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprev)
vim.keymap.set("n", "<C-w>", vim.cmd.bdelete)

-- Fix common typos
vim.cmd([[
    cnoreabbrev W! w!
    cnoreabbrev W1 w!
    cnoreabbrev w1 w!
    cnoreabbrev Q! q!
    cnoreabbrev Q1 q!
    cnoreabbrev q1 q!
    cnoreabbrev Qa! qa!
    cnoreabbrev Qall! qall!
    cnoreabbrev Wa wa
    cnoreabbrev Wq wq
    cnoreabbrev wQ wq
    cnoreabbrev WQ wq
    cnoreabbrev wq1 wq!
    cnoreabbrev Wq1 wq!
    cnoreabbrev wQ1 wq!
    cnoreabbrev WQ1 wq!
    cnoreabbrev W w
    cnoreabbrev Q q
    cnoreabbrev Qa qa
    cnoreabbrev Qall qall
]])

