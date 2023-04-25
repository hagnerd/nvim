return {
	{
		"danymat/neogen",
		opts = {
			snippets_engine = "luasnip",
		},
		config = function(_, opts)
			require("neogen").setup(opts)
		end,
	},
}
