-- init.lua
-- Basic Settings
vim.opt.number = true               -- Show line numbers
vim.opt.relativenumber = false      -- Show relative line numbers
vim.opt.mouse = 'a'                 -- Enable mouse support
vim.opt.ignorecase = true           -- Ignore case in search
vim.opt.smartcase = true            -- Smart case in search
vim.opt.hlsearch = false            -- Don't highlight search
vim.opt.wrap = true                 -- Don't wrap lines
vim.opt.linebreak = true            -- Makes wrapping occur at word boundaries
vim.opt.breakindent = true          -- Maintain indent when wrapping
vim.opt.tabstop = 4                 -- Tab width
vim.opt.shiftwidth = 4              -- Indent width
vim.opt.expandtab = true            -- Use spaces instead of tabs
vim.opt.signcolumn = 'yes'          -- Always show sign column
vim.opt.termguicolors = true        -- Enable true colors
vim.opt.updatetime = 250            -- Faster completion
vim.opt.timeoutlen = 300            -- Faster key timeout
vim.opt.clipboard = 'unnamedplus'    -- Use system clipboard
vim.opt.scrolloff = 8               -- Lines of context
vim.opt.sidescrolloff = 8           -- Columns of context
vim.opt.splitright = true           -- Split windows right
vim.opt.splitbelow = true           -- Split windows below
vim.opt.autowrite = true            -- Auto save before commands

-- Key Mappings
vim.g.mapleader = ' '               -- Set leader key to space

-- Basic mappings
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', { desc = 'Save' })
vim.keymap.set('n', '<leader>q', '<cmd>quit<cr>', { desc = 'Quit' })
vim.keymap.set('n', '<leader>h', '<cmd>nohlsearch<cr>', { desc = 'Clear search' })

-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to upper window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })

-- Buffer navigation
vim.keymap.set('n', '<S-h>', '<cmd>bprevious<cr>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<S-l>', '<cmd>bnext<cr>', { desc = 'Next buffer' })

-- Install package manager (lazy.nvim)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugin specifications
require("lazy").setup({
  -- Theme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  
  -- File explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<cr>')
    end,
  },

  -- Fuzzy finder
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local telescope = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', telescope.find_files)
      vim.keymap.set('n', '<leader>fg', telescope.live_grep)
      vim.keymap.set('n', '<leader>fb', telescope.buffers)
    end,
  },

  -- LSP Support
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
      'neovim/nvim-lspconfig',
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
    },
    config = function()
      local lsp_zero = require('lsp-zero')
      lsp_zero.on_attach(function(client, bufnr)
        lsp_zero.default_keymaps({buffer = bufnr})
      end)
      
      require('lspconfig').lua_ls.setup({})
    end,
  },
})
