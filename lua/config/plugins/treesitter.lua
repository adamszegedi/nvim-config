return {
	{
		"nvim-treesitter/nvim-treesitter",
        lazy = false,
		build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "lua", "vim", "vimdoc",
                "rust",
                "typescript", "javascript", "tsx",
                "json", "yaml", "toml",
                "bash", "markdown",
            },
            auto_install = true,
        },
	}
}
