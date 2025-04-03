require('config.lazy')
require('config.set')
require('config.keymaps')
require('config.lsp')

require("lazy").setup({
    spec = { {
        { import = "config.plugins" },
        { 'j-hui/fidget.nvim',      opts = {} },
    } }
})

vim.cmd [[colorscheme kanagawa-wave]]
