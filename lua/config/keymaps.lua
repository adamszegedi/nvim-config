vim.keymap.set("n", "<leader>bc", "<Cmd>bd|bprev<Cr>", { desc = "[C]lose the current buffer" })
vim.keymap.set("n", "<leader>bd", "<Cmd>%bd|e#|bd#<Cr>", { desc = "[D]elete all buffers" })
vim.keymap.set("n", "<leader>w", "<Cmd>WhichKey<Cr>", { desc = "[W]hichKey" })
vim.keymap.set("n", "<leader>o", "<Cmd>Oil<CR>", { noremap = true, silent = true, desc = "[O]il" })

