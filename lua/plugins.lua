local plugins = {
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	"folke/neodev.nvim",
	require("options.nvim-tree"),
	require("options.mason"),
	require("options.conform"),
	require("options.nvim-treesitter"),
}

return plugins
