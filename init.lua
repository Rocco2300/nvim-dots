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
    {'catppuccin/nvim', name = 'catppuccin'}
}

opt = { }

require('lazy').setup(plugins, opt)

require('catppuccin').setup({
    flavour = 'macchiato',
    transparent_background = true,
    show_end_of_buffer = false,
    term_colors = true,
})

vim.cmd.colorscheme 'catppuccin'
