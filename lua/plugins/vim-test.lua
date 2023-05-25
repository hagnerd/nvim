local vim_test = {
  "vim-test/vim-test",
  config = function()
    vim.keymap.set("n", "<leader>tn", "<CMD>TestNearest<CR>")
    vim.keymap.set("n", "<leader>tf", "<CMD>TestFile<CR>")
    vim.keymap.set("n", "<leader>ts", "<CMD>TestSuite<CR>")
    vim.keymap.set("n", "<leader>tl", "<CMD>TestLast<CR>")
    vim.keymap.set("n", "<leader>tv", "<CMD>TestVisit<CR>")
  end,
}

return {
  { "nvim-neotest/neotest-jest", config = function(opts) end },
  { "marilari88/neotest-vitest", config = function(opts) end },
  { "olimorris/neotest-rspec", config = function(opts) end },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
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
