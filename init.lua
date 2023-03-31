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

plugins = {
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',
    'nvim-lualine/lualine.nvim',

    {'catppuccin/nvim', name = 'catppuccin'}
}

opt = { }

require('lazy').setup(plugins, opt)

require('colorscheme.catppuccin')
require('plugin-config')
