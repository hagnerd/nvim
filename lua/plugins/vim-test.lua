return {
	"vim-test/vim-test",
	config = function()
		vim.keymap.set("n", "<leader>tn", "<CMD>TestNearest<CR>")
		vim.keymap.set("n", "<leader>tf", "<CMD>TestFile<CR>")
		vim.keymap.set("n", "<leader>ts", "<CMD>TestSuite<CR>")
		vim.keymap.set("n", "<leader>tl", "<CMD>TestLast<CR>")
		vim.keymap.set("n", "<leader>tv", "<CMD>TestVisit<CR>")
	end,
}
