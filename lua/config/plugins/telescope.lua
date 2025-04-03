return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
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
            vim.keymap.set("n", "<space>fh", require('telescope.builtin').help_tags, { desc = "[H]elp Tags" })
            vim.keymap.set("n", "<space>fd", require('telescope.builtin').find_files, { desc = "[F]iles" })
            vim.keymap.set("n", "<space>fg", require('telescope.builtin').live_grep, { desc = "[G]rep" })
            vim.keymap.set("n", "<space>gf", require('telescope.builtin').git_files, { desc = "Git [F]iles" })
            vim.keymap.set("n", "<space>gs", require('telescope.builtin').git_status, { desc = "Git [S]tatus" })
            vim.keymap.set("n", "<space><space>", require('telescope.builtin').buffers)
        end
    }
}
