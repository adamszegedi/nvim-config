require('config.lazy')
require('config.set')
require('config.commands')
require('config.keymaps')
require('config.lsp')

require("lazy").setup({
    spec = {
        { import = "config.plugins" },
        { 'j-hui/fidget.nvim',           opts = {} },
        { "nvim-tree/nvim-web-devicons", opts = {} },
        { 'neovim/nvim-lspconfig' },
        { "williamboman/mason.nvim",     opts = {} },
    }
})

vim.o.background = "dark"
vim.cmd([[colorscheme kanagawa-wave]])

vim.api.nvim_create_autocmd('ColorScheme', {
    callback = function()
        vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
        vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'NONE' })
    end,
})
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'NONE' })
