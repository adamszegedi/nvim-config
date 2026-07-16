return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
        },
        keys = {
            { "<leader>fh", function() require('telescope.builtin').help_tags() end,   desc = "[H]elp Tags" },
            { "<leader>fd", function() require('telescope.builtin').find_files() end,  desc = "[F]iles" },
            { "<leader>fg", function() require('telescope.builtin').live_grep() end,   desc = "[G]rep" },
            { "<leader>ff", function() require('telescope.builtin').git_files() end,   desc = "Git [F]iles" },
            { "<leader>fs", function() require('telescope.builtin').git_status() end,  desc = "Git [S]tatus" },
            { "<leader><leader>", function() require('telescope.builtin').buffers() end },
        },
        config = function()
            require('telescope').setup {
                pickers = {
                    find_files = {
                        theme = "ivy"
                    },
                    git_files = {
                        theme = "ivy"
                    },
                    buffers = {
                        theme = "dropdown",
                        previewer = false,
                        initial_mode = "normal",
                    },
                },
                extensions = {
                    fzf = {}
                }
            }
            require('telescope').load_extension('fzf')
        end
    }
}
