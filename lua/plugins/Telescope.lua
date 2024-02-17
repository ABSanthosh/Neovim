return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  config = function()
    local actions = require("telescope.actions")
    require("telescope").setup({
      defaults = {
        mappings = {
         i = {
           ["<esc>"] = actions.close
	  },
	},
     },
   })
  end,
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
        end,
    },
  },
}
