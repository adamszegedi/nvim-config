return {
    {
        "folke/which-key.nvim",
        event = 'VimEnter',
        opts = {
            spec = {
                { '<leader>f', group = '[F]ind' },
                { '<leader>b', group = '[B]uffer' },
                { '<leader>g', group = '[G]it' },
            },
        },
    },
}
