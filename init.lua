vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = require("plugins")
local opts = require("options")

require("lazy").setup(plugins, opts)

vim.schedule(function()
	require("mappings")
end)

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false

function _G.foldtext()
	local foldstart = vim.v.foldstart
	local foldend = vim.v.foldend
	local foldtext = vim.fn.getline(foldstart)
	local hiddenLines = foldend - foldstart
	foldtext = foldtext .. " +" .. hiddenLines .. " lines"
	return foldtext
end
vim.opt.foldtext = "v:lua.foldtext()"
