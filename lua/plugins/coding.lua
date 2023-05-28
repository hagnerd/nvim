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
  {
    "Wansmer/treesj",
    keys = {
      { "<leader>j", "<cmd>lua require('treesj').toggle()<CR>", desc = "Toggle join for using treesj" },
    },
  },
}
