return {
  {
    "stevearc/oil.nvim",
    keys = {
      { "-", "<cmd>lua require('oil').open()<CR>", desc = "Open the parent directory of the current file" },
    },
    config = function(opts)
      require("oil").setup(opts)
    end,
  },
  {
    "kevinhwang91/nvim-bqf",
    dependencies = { "junegunn/fzf" },
    config = function(opts)
      require("bqf").setup(opts)
    end,
  },
  {
    "junegunn/fzf",
  },
  {
    "cbochs/grapple.nvim",
  },
}
