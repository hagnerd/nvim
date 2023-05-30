return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },
  {
    "TimUntersberger/neogit",
  },
  {
    "akinsho/git-conflict.nvim",
  },
  {
    "ruifm/gitlinker.nvim",
    config = function(opts)
      require("gitlinker").setup(opts)
    end,
  },
  {
    "f-person/git-blame.nvim",
    init = function()
      vim.g["gitblame_enabled"] = 0
    end,
  },
}
