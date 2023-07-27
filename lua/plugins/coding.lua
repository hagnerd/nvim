return {
  {
    "danymat/neogen",
    opts = {
      snippets_engine = "luasnip",
    },
  },
  {
    "Wansmer/treesj",
    keys = {
      { "<leader>j", "<cmd>lua require('treesj').toggle()<CR>", desc = "Toggle join for using treesj" },
    },
  },
  {
    "SmiteshP/nvim-navic",
    opts = {},
  },
  {
    "utilyre/barbecue.nvim",
    dependencies = { "SmiteshP/nvim-navic", "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  {
    "numToStr/Comment.nvim",
    opts = {},
  },
  {
    "windwp/nvim-autopairs",
    opts = {},
  },
  {
    -- Leverages treesitter which is more performant
    -- Alternatives: tpope/vim-surround
    "kylechui/nvim-surround",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    opts = {},
  },
}
