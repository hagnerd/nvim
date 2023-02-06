return {
  "vim-test/vim-test",
  keys = {
    { "<leader>tf", "<CMD>TestFile<CR>", desc = "Run all tests in file", silent = true, noremap = true },
    { "<leader>tn", "<CMD>TestNearest<CR>", desc = "Run nearest test", silent = true, noremap = true },
    -- { "<leader>ts", "<CMD>TestSuite<CR>", desc = "Run current suite, or last suite", silent = true, noremap = true },
    { "<leader>tl", "<CMD>TestLast<CR>", desc = "Run the last test set you ran", silent = true, noremap = true },
    { "<leader>tv", "<CMD>TestLast<CR>", desc = "Visits the last test you ran", silent = true, noremap = true },
  },
}
