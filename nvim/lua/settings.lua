require("plugins.coc")
require("plugins.treesitter")
require("plugins.coc-snip")
require("plugins.lualine")
vim.wo.number = true
vim.wo.relativenumber = true
vim.cmd([[set clipboard=unnamedplus]])
vim.o.confirm = true
vim.o.autoindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.wrap = false
--vim.o.signcolumn = "n"
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.updatetime = 300
vim.opt.signcolumn = "yes"
vim.cmd([[colorscheme gruvbox]])
vim.cmd([[set termguicolors]])
vim.cmd([[
	highlight LineNrAbove guifg=#5c6370
	highlight LineNrBelow guifg=#5c6370
	highlight LineNr guifg=#fabd2f
]])
