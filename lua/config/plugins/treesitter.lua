local ensure_installed = {
    "lua", "vim", "vimdoc",
    "rust",
    "java",
    "typescript", "javascript", "tsx",
    "json", "yaml", "toml",
    "bash", "markdown", "markdown_inline",
}

return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require('nvim-treesitter').install(ensure_installed)

            vim.api.nvim_create_autocmd('FileType', {
                group = vim.api.nvim_create_augroup('treesitter-start', { clear = true }),
                pattern = ensure_installed,
                callback = function()
                    vim.treesitter.start()
                    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                end,
            })
        end,
    }
}
