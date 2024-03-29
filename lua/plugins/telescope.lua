return {
      sort_lastused = true, 
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    "nvim-web-devicons",
    "nvim-telescope/telescope-file-browser.nvim",
  },
}

