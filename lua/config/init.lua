require('config.lazy')
require('config.set')
require('config.commands')
require('config.keymaps')
require('config.lsp')

require("lazy").setup({
    spec = {
        { import = "config.plugins" },
        { 'j-hui/fidget.nvim',       opts = {} },
        { 'neovim/nvim-lspconfig' },
        { "williamboman/mason.nvim", opts = {} },
    }
})

vim.cmd [[colorscheme kanagawa-wave]]
