vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.tree_open = false

vim.opt.termguicolors = true

require('nvim-tree').setup({
    update_focused_file = {
        enable = true,
        update_cwd = true,
        update_root = true
    },
    actions = {
        open_file = {
            quit_on_open = true,
        }
    }
})

vim.keymap.set('n', '<leader>t',
    function()
        vim.cmd('NvimTreeToggle')
        vim.g.tree_open = not vim.g.tree_open
    end
)

vim.keymap.set('n', '<leader>f',
    function()
        if vim.g.tree_open then
            vim.cmd('NvimTreeFocus')
        end
    end
)
