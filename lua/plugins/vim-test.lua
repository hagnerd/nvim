if os.getenv("NVIM_PREFERRED_TEST_FRAMEWORK") == "vim-test" then
  return {
    {
      "vim-test/vim-test",
      keys = {
        { "<leader>tn", "<CMD>TestNearest<CR>", desc = "Runs the nearest test with vim-test" },
        { "<leader>tf", "<CMD>TestFile<CR>" desc = "Runs all of the tests in the file with vim-test" },
        {
          "<leader>ts",
          "<CMD>TestSuite<CR>",
          desc = "Runs the entire suite with vim-test"
        },
        { "<leader>tl", "<CMD>TestLast<CR>", desc = "Runs the last ran test with vim-test" },
        { "<leader>tv", "<CMD>TestVisit<CR>", desc = "Navigates to the last ran test file with vim-test" },
      },
    },
  }
end

return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-jest",
      "marilari88/neotest-vitest",
      "olimorris/neotest-rspec",
    },
    keys = {
      {
        "<leader>to",
        "<cmd>lua require('neotest').summary.toggle()<CR>",
        desc = "Toggles the summary window for Neotest",
      },
      { "<leader>tn", "<cmd>lua require('neotest').run.run()<CR>", desc = "Runs the nearest test in Neotest" },
      {
        "<leader>tf",
        "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>",
        desc = "Runs tests for the file in Neotest",
      },
      {
        "<leader>ta",
        "<cmd>lua require('neotest').run.attach()<CR>",
        desc = "Attaches to the currently running test process. Use for debugging",
      },
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-jest"),
          require("neotest-vitest"),
          require("neotest-rspec"),
        },
      })
    end,
  },
}
