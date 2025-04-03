vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line up" })       -- move line up(n)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line down" })     -- move line down(n)
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move line up" })   -- move line up(v)
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move line down" }) -- move line down(v)


