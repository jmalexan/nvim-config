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

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 0
vim.opt.termguicolors = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.number = true

vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"

require("lazy").setup("plugins")
