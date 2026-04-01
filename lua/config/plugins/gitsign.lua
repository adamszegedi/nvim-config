return {
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require('gitsigns').setup {
                on_attach = function(bufnr)
                    local gitsigns = require('gitsigns')

                    local function map(mode, l, r, opts)
                        opts = opts or {}
                        opts.buffer = bufnr
                        vim.keymap.set(mode, l, r, opts)
                    end

                    -- Navigation
                    map('n', ']c', function()
                        if vim.wo.diff then
                            vim.cmd.normal({ ']c', bang = true })
                        else
                            gitsigns.nav_hunk('next')
                        end
                    end)

                    map('n', '[c', function()
                        if vim.wo.diff then
                            vim.cmd.normal({ '[c', bang = true })
                        else
                            gitsigns.nav_hunk('prev')
                        end
                    end)

                    -- Blame
                    map('n', '<leader>gb', function()
                        gitsigns.blame_line({ full = true })
                    end, { desc = "Blame Line" })
                    map('n', '<leader>gt', gitsigns.toggle_current_line_blame, { desc = "[T]oggle Line Blame" })

                    -- Diff
                    map('n', '<leader>ghd', gitsigns.diffthis, { desc = "Diff This" })
                    map('n', '<leader>ghD', function()
                        gitsigns.diffthis('~')
                    end, { desc = "Diff vs HEAD~1" })
                    map('n', '<leader>ghp', gitsigns.preview_hunk, { desc = "Preview Hunk" })
                end
            }
        end
    }
}
