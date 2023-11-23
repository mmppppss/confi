require("plugins.coc")
require("plugins.treesitter")
require("plugins.coc-snip")
require("plugins.lualine")
vim.wo.number = true
vim.wo.relativenumber = true
--vim.o.clipboard = unnamedplus
vim.cmd 'set clipboard=unnamedplus'
vim.o.confirm = true
vim.o.autoindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.updatetime = 300
vim.opt.signcolumn = "yes"
vim.cmd([[colorscheme gruvbox]])
--vim.cmd("let g:user_emmet_install_global = 0")
--vim.cmd("autocmd FileType html,css EmmetInstall")
