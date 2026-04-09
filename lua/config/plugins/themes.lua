local function apply_float_overrides()
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'NONE' })
    -- blink.cmp completion windows
    vim.api.nvim_set_hl(0, 'BlinkCmpMenu', { link = 'NormalFloat' })
    vim.api.nvim_set_hl(0, 'BlinkCmpMenuBorder', { link = 'FloatBorder' })
    vim.api.nvim_set_hl(0, 'BlinkCmpDoc', { link = 'NormalFloat' })
    vim.api.nvim_set_hl(0, 'BlinkCmpDocBorder', { link = 'FloatBorder' })
    vim.api.nvim_set_hl(0, 'BlinkCmpSignatureHelp', { link = 'NormalFloat' })
    vim.api.nvim_set_hl(0, 'BlinkCmpSignatureHelpBorder', { link = 'FloatBorder' })
end

vim.api.nvim_create_autocmd('ColorScheme', {
    callback = apply_float_overrides,
})

return {
    {
        'rebelot/kanagawa.nvim',
        lazy = true,
        priority = 1000,
        opts = {},
        config = function()
            vim.o.background = "dark"
        end,
    },
    {
        'folke/tokyonight.nvim',
        lazy = true,
        opts = {},
    },
    {
        'ellisonleao/gruvbox.nvim',
        lazy = true,
        opts = {},
        config = function()
            vim.cmd([[colorscheme gruvbox]])
        end,
    },
    {
        'sainnhe/gruvbox-material',
        priority = 1000,
        config = function()
            vim.o.background = 'dark'
            vim.g.gruvbox_material_background = 'medium'      -- the one we want: #32302f
            vim.g.gruvbox_material_foreground = 'material'  -- muted parchment #D4BE98
            vim.g.gruvbox_material_enable_italic = true
            vim.g.gruvbox_material_better_performance = 1
            vim.cmd.colorscheme('gruvbox-material')
        end,
    },
}
