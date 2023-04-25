return {
	{
		"nvim-telescope/telescope.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{ "<leader>ff", "<CMD>Telescope find_files<CR>", desc = "Find files" },
			{ "<leader>fb", "<CMD>Telescope buffers<CR>", desc = "Find buffers" },
			{ "<leader>fg", "<CMD>Telescope grep_string<CR>", desc = "Find by grep" },
			{ "<leader>fh", "<CMD>Telescope help_tags<CR>", desc = "Find help" },
			{
				"<localleader>fg",
				"<CMD>Telescope current_buffer_fuzzy_find<CR>",
				desc = "Find by grep in current buffer",
			},
		},
		opts = function()
			return {
				defaults = {
					sorting_strategy = "ascending",
					layout_config = {
						prompt_position = "top",
					},
					mappings = {
						n = {
							["<C-d>"] = require("telescope.actions").delete_buffer,
						},
						i = {
							["<C-d>"] = require("telescope.actions").delete_buffer,
						},
					},
				},
				extensions = {
					fzf = {
						fuzzy = true, -- False will only do exact matching
						override_generic_sorter = false, -- Override generic sorter
						override_file_sorter = true, -- override file sorter
						case_mode = "smart_case", -- ignore casing unless you type a capital character
					},
				},
			}
		end,
		config = function(_, opts)
			require("telescope").setup(opts)
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function() end,
	},
}
