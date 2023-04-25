return {
	{ "nvim-lua/plenary.nvim", lazy = true },

	-- VimL utility plugins that are dope {
	{
		-- Leverages treesitter which is more performant
		-- Alternatives: tpope/vim-surround
		"kylechui/nvim-surround",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		config = function()
			require("nvim-surround").setup({})
		end,
	},
	{
		-- This plugin leverages treesitter which is much more performant than the vim regex system.
		-- Alternatives: tpope/vim-endwise
		"RRethy/nvim-treesitter-endwise",
		config = function()
			require("nvim-treesitter.configs").setup({
				endwise = {
					enable = true,
				},
			})
		end,
	},
	{ "tpope/vim-repeat" },
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
	-- }

	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
}
