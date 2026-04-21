vim.lsp.enable('lua_ls')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('ts_ls')

vim.lsp.config('rust_analyzer', {
    settings = {
        ['rust-analyzer'] = {
            check = {
                command = "clippy",
            },
        },
    },
});

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if not client then return end

        vim.keymap.set('n', 'grd', vim.lsp.buf.definition, { buffer = args.buf, desc = 'Go to [D]efinition' })
        vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, { buffer = args.buf, desc = 'Signature Help' })
        vim.keymap.set('n', '<leader>cf', function() vim.lsp.buf.format({ bufnr = args.buf }) end, { buffer = args.buf, desc = '[F]ormat' })

        local filetype = vim.bo.filetype

        if filetype == "lua" or filetype == "rust" then
            -- Format the current buffer on save
            vim.api.nvim_create_autocmd('BufWritePre', {
                buffer = args.buf,
                callback = function()
                    vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
                end,
            })
        end
    end,
})

-- Diagnostics
vim.diagnostic.config({
    jump = {
        on_jump = function()
            vim.diagnostic.open_float()
        end,
    },
    float = {
        border = 'rounded',
        pad_top = 1,
        pad_bottom = 1,
    },
})
