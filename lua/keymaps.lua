vim.g.mapleader = ' '
vim.g.localmapleader = ' '

vim.opt.autoread = true
vim.opt.autowrite = true
vim.opt.autowriteall = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.hidden = true
vim.opt.showmode = false

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>', opts)

vim.keymap.set('v', '<A-j>', ':m \'>+1<CR> gv=gv', opts)
vim.keymap.set('v', '<A-k>', ':m \'<-2<CR> gv=gv', opts)

vim.keymap.set('n', '<A-j>', ':m .+1<CR> ==', opts)
vim.keymap.set('n', '<A-k>', ':m .-2<CR> ==', opts)

vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR> ==gi', opts)
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR> ==gi', opts)

vim.keymap.set('n', '<tab>', ':bn<CR>', opts)
vim.keymap.set('n', '<leader><tab>', ':bp<CR>', opts)

vim.keymap.set('n', '<C-q>', '<C-w>q', opts)
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Purge the evil
vim.keymap.set('n', 'ZZ', '<NOP>', opts)
vim.keymap.set('n', 'ZX', '<NOP>', opts)
vim.keymap.set('n', '<C-Z>', '<NOP>', opts)
