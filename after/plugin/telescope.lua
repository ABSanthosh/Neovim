local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.api.nvim_set_keymap(
  "n",
  "<C-b>",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true }
)
vim.keymap.set('n', '<C-A-f>', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
