require("remap");
require("set");

-- Install lazy package manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- [[ Configure plugins ]]
require('lazy').setup({
  { import = "plugins" },
  
  -- TODO: See how to use these two
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
},{})


-- Enable fzf
pcall(require('telescope').load_extension, 'fzf')

-- Mason lsp config
require('mason').setup()
require('mason-lspconfig').setup()

-- Lua config
require('neodev').setup()

-- Telescope
local actions = require('telescope.actions')
local fb_actions = require "telescope".extensions.file_browser.actions

require("telescope").setup {
  defaults = {
    layout_config = {
      anchor = "N",
    },
    selection_caret = "➻ ",
    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
      n = { 
        ["<esc>"] = actions.close,
      },
    },
  },
  pickers = {
    buffers = {
      sort_lastused = true, 
      previewer = false,
      theme = "dropdown",
    },
    find_files = {
      previewer = false,
      theme = "dropdown",
    }
  },
  extensions = {
    file_browser = {
      hijack_netrw = true,
      previewer = false,
      display_stat = false,
      collapse_dirs = true,
      git_status = false,
      sorting_strategy = "ascending",
      default_selection_index= 2,

      -- Positioning
      layout_strategy = "vertical",
      layout_config = {
        anchor = "E",
        height = 0.96,
      	width = 33,
      	prompt_position = "top",
      },
    }
  }
}
require("telescope").load_extension "file_browser"

