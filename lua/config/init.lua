require('config.lazy')
require('config.set')
require('config.keymaps')

require("lazy").setup({
    spec = { { import = "config.plugins" } }
})

vim.cmd [[colorscheme kanagawa-wave]]
