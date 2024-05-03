local plugins = {
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = function()
	  require "options.nvimtree"
  end,
  config = function()
    require("nvim-tree").setup {opts}
  end}
}

return plugins
