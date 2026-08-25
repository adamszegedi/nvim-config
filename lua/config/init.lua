require('config.lazy')
require('config.set')
require('config.keymaps')
require('config.lsp')

require("lazy").setup({
    spec = {
        { import = "config.plugins" },
    },
    performance = {
        rtp = {
            disabled_plugins = {
                "gzip",
                "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
            },
        },
    },
})
