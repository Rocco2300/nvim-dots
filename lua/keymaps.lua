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

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>', opts)

vim.keymap.set('v', '<A-j>', ':m \'>+1<CR> gv=gv', opts)
vim.keymap.set('v', '<A-k>', ':m \'<-2<CR> gv=gv', opts)

vim.keymap.set('n', '<A-j>', ':m .+1<CR> ==', opts)
vim.keymap.set('n', '<A-k>', ':m .-2<CR> ==', opts)

vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR> ==gi', opts)
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR> ==gi', opts)
