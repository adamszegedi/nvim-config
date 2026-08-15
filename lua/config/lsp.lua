vim.lsp.enable('lua_ls')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('ts_ls')
vim.lsp.enable('jdtls')

vim.lsp.config('rust_analyzer', {
    settings = {
        ['rust-analyzer'] = {
            check = {
                command = "clippy",
            },
        },
    },
});

vim.lsp.config('jdtls', {
    cmd = {
        'jdtls',
        '-data', vim.fn.stdpath('cache') .. '/jdtls-workspace/' .. vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t'),
    },
});

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if not client then return end

        vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, { buffer = args.buf, desc = 'Signature Help' })
        vim.keymap.set('n', '<leader>cf', function() vim.lsp.buf.format({ bufnr = args.buf }) end, { buffer = args.buf, desc = '[F]ormat' })
        vim.keymap.set('n', '<leader>cl', require('telescope.builtin').lsp_document_symbols, { buffer = args.buf, desc = '[L]SP Symbols' })
        vim.keymap.set('n', '<leader>cw', require('telescope.builtin').lsp_workspace_symbols, { buffer = args.buf, desc = '[W]orkspace Symbols' })

        if client:supports_method('textDocument/inlayHint') then
            vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
            vim.keymap.set('n', '<leader>ch', function()
                vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = args.buf }), { bufnr = args.buf })
            end, { buffer = args.buf, desc = '[H]int Toggle' })
        end

        local filetype = vim.bo.filetype

        local no_format = {
            typescript = true,
            javascript = true,
            typescriptreact = true,
            javascriptreact = true,
        }

        if not no_format[filetype] then
            -- Format the current buffer on save
            local group = vim.api.nvim_create_augroup('lsp_format_' .. args.buf, { clear = true })
            vim.api.nvim_create_autocmd('BufWritePre', {
                group = group,
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
