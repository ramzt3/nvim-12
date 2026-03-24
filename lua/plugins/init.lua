-- ============================================================================
-- PLUGINS (vim.pack)
-- ============================================================================
vim.pack.add({
	"https://www.github.com/lewis6991/gitsigns.nvim",
	"https://www.github.com/echasnovski/mini.nvim",
	"https://www.github.com/ibhagwan/fzf-lua",
	"https://www.github.com/nvim-lua/plenary.nvim",
	"https://www.github.com/nvim-tree/nvim-web-devicons",
	"https://www.github.com/nvim-telescope/telescope-ui-select.nvim",
	"https://www.github.com/nvim-telescope/telescope.nvim",
	"https://www.github.com/nvim-tree/nvim-tree.lua",
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		branch = "main",
		build = ":TSUpdate",
	},
	-- Language Server Protocols
	"https://www.github.com/neovim/nvim-lspconfig",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/creativenull/efmls-configs-nvim",
	{
		src = "https://github.com/saghen/blink.cmp",
		version = vim.version.range("*"),
	},
	"https://github.com/L3MON4D3/LuaSnip",
	"https://www.github.com/stevearc/oil.nvim",
	"https://www.github.com/folke/which-key.nvim",
})

local function packadd(name)
	vim.cmd("packadd " .. name)
end
packadd("nvim-treesitter")
packadd("gitsigns.nvim")
packadd("mini.nvim")
packadd("fzf-lua")
packadd("nvim-tree.lua")
-- LSP
packadd("nvim-lspconfig")
packadd("mason.nvim")
packadd("efmls-configs-nvim")
packadd("blink.cmp")
packadd("LuaSnip")

require('plugins.oil')
require('plugins.treesitter')
-- require('plugins.fzf')
require('plugins.telescope')
require('plugins.mini')
require('plugins.which-key')
-- require('plugins.efmls-configs')
require('plugins.gitsigns')
