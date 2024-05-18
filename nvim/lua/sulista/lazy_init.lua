local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("sulista.lazy")













--[[
	{

	"folke/tokyonight.nvim"
	},

	--MasonPlugins

      {
          'williamboman/mason.nvim'
      },
      {
          'williamboman/mason-lspconfig.nvim'
      },

    -- LSP Support
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false,
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            {'hrsh7th/cmp-nvim-lsp'},
        }
    },
    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            {'L3MON4D3/LuaSnip'}
	},
    },
    -- init.lua:
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
    -- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }

    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
    },
    {
        'nvim-treesitter/playground'
    },
    {
        'ThePrimeagen/harpoon'
    },
    {
        'mbbill/undotree'
    },
    {
        'tpope/vim-fugitive'
    }
})


local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = {
    lsp_zero.default_setup,
  },
})

--]]


