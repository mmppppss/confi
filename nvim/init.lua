local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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
require("lazy").setup({
    {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		dependencies = { 'nvim-lua/plenary.nvim' }
    },
 --   "folke/tokyonight.nvim",
	"ellisonleao/gruvbox.nvim",
    {
		"neoclide/coc.nvim", 
		branch= "release"
	},
	{
		"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"
	},
	"terrortylor/nvim-comment",
	{
		"lukas-reineke/indent-blankline.nvim", 
		main = "ibl", opts = {} 
	},
	'honza/vim-snippets',
	'junegunn/goyo.vim',
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
	},
--	'Exafunction/codeium.vim',
	{
		'windwp/nvim-autopairs',
		--event = "InsertEnter",
		opts = {}
	}
})

require("ibl").setup({
       debounce = 100,
       indent = { char = "│"},
       whitespace = { highlight = {"Whitespace", "NonText", "Function" } },
       scope = { enabled=true, exclude = { language = { "lua" } } },
})
--END LAZY
require("keymap")
require("settings")
