local function apply_float_overrides()
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'NONE' })
end

vim.api.nvim_create_autocmd('ColorScheme', {
    callback = apply_float_overrides,
})

return {
    {
        'rebelot/kanagawa.nvim',
        priority = 1000,
        opts = {},
        config = function()
            vim.o.background = "dark"
            vim.cmd([[colorscheme kanagawa-wave]])
        end,
    },
    {
        'folke/tokyonight.nvim',
        lazy = true,
        opts = {},
        config = function()
            vim.cmd([[colorscheme tokyonight]])
        end,
    },
    {
        'ellisonleao/gruvbox.nvim',
        lazy = true,
        opts = {},
        config = function()
            vim.cmd([[colorscheme gruvbox]])
        end,
    },
}
