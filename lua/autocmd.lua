vim.api.nvim_create_autocmd('BufWritePre', {
    command = 'silent! lua vim.lsp.buf.format({ async = false })'
})
