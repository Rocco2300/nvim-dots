require('keymaps')

local lazypath = vim.fn.stdpath('data') .. 'lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable',
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',
    'nvim-lualine/lualine.nvim',
    'nvim-treesitter/nvim-treesitter',
    {
        'akinsho/toggleterm.nvim',
        tag = 'v2.5.0',
        config = true
    },
    {
        'akinsho/bufferline.nvim',
        tag = 'v3.6.0'
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- lsp
    {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    },

    -- completion
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',

    -- colors
    { 'catppuccin/nvim', name = 'catppuccin' }
}

local opt = {}

require('lazy').setup(plugins, opt)

require('colorscheme.catppuccin')
require('plugin-config')
