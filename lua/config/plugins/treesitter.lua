return {
	{
		"nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
		build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "lua", "vim", "vimdoc",
                "rust",
                "java",
                "typescript", "javascript", "tsx",
                "json", "yaml", "toml",
                "bash", "markdown",
            },
            auto_install = true,
        },
	}
}
