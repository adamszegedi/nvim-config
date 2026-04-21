return {
    {
        "folke/which-key.nvim",
        event = 'VimEnter',
        opts = {
            spec = {
                { '<leader>f',  group = '[F]ind' },
                { '<leader>c',  group = '[C]ode' },
                { 'gr',         group = '[G]oto' },
                { 'grd',        desc = '[D]efinition' },
                { 'gri',        desc = '[I]mplementation' },
                { 'grr',        desc = '[R]eferences' },
                { 'grx',        desc = 'Code[l]ens Run' },
                { 'gra',        desc = 'Code [A]ction' },
                { 'grn',        desc = 'Re[n]ame' },
                { 'grt',        desc = '[T]ype Definition' },
                { '<leader>b',  group = '[B]uffer' },
                { '<leader>g',  group = '[G]it' },
                { '<leader>gh', group = '[D]iff' },
            },
        },
    },
}
