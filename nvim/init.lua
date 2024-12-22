local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	--'morhetz/gruvbox',
	"ellisonleao/gruvbox.nvim",
	"preservim/nerdtree",
	{
		"neoclide/coc.nvim", 
		branch= "release"
	},
	{
		"nvim-treesitter/nvim-treesitter", 
		build = ":TSUpdate"
	},
	"terrortylor/nvim-comment",
	{
		"lukas-reineke/indent-blankline.nvim", 
		main = "ibl", opts = {} 
	},
	'junegunn/goyo.vim',
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
	},
	'Exafunction/codeium.vim',
	'github/copilot.vim',
	{
		'windwp/nvim-autopairs',
		--event = "InsertEnter",
		opts = {}
	},
	"puremourning/vimspector",
    {
    	"lukas-reineke/headlines.nvim",
    	dependencies = "nvim-treesitter/nvim-treesitter",
    	config = true, -- or `opts = {}`
    },
	'mattn/emmet-vim',
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		--build = "make install_jsregexp",
		dependencies = "rafamadriz/friendly-snippets"
	},
	'SirVer/ultisnips',
	'honza/vim-snippets',
--	{
--    	"jghauser/auto-pandoc.nvim",
--    	dependencies = { "nvim-lua/plenary.nvim" },
--    	ft = "markdown",
--	}
})

--END LAZY
require("keymap")
require("settings")
local ls = require("luasnip")

vim.keymap.set({"i"}, "<C-k>", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})
require("luasnip.loaders.from_vscode").lazy_load()

