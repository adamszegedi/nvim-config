return {
    {
        'nvim-mini/mini.nvim',
        version = '*',
        config = function()
            local statusline = require 'mini.statusline'
            statusline.setup { use_icons = true }
            local icons = require 'mini.icons'
            icons.setup()
            MiniIcons.mock_nvim_web_devicons()
        end
    },
}
