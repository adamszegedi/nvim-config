return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            'saghen/blink.cmp',
        },
        config = function()
            local capabilities = require('blink.cmp').get_lsp_capabilities()
            require("lspconfig").lua_ls.setup { capabilites = capabilities }
            require("lspconfig").rust_analyzer.setup { capabilites = capabilities }
            require("lspconfig").rust_analyzer.setup { capabilites = capabilities }
            require("lspconfig").ts_ls.setup { capabilites = capabilities }
        end,
    }
}
