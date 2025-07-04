return {
	{
		'saghen/blink.cmp',
		dependencies = 'rafamadriz/friendly-snippets',

		version = 'v1.*',

		opts = {
			keymap = { preset = 'default' },

			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = 'mono'
			},
			sources = {
				default = { 'lsp', 'path', 'snippets', 'buffer' },
			},

			signature = { enabled = true },
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
		opts_extend = { "sources.default" },
	},
}
