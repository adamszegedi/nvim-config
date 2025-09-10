-- Create the :Blame command
vim.api.nvim_create_user_command('Blame', function()
    local bufname = vim.api.nvim_buf_get_name(0)
    vim.cmd("vert rightbelow new")
    vim.bo.buftype = "nofile"
    vim.cmd(string.format("read !git blame %s", vim.fn.shellescape(bufname)))
end, {})
