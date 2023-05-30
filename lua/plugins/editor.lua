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
    "nvim-pack/nvim-spectre",
    keys = {
      { "<leader>S", "<cmd>lua require('spectre').open()<CR>", desc = "Open Spectre" },
      {
        "<leader>sw",
        '<esc><cmd>lua require("spectre").open_visual()<CR>',
        desc = "Search current word",
        mode = "v",
      },
    },
    enabled = function()
      return vim.fn.executable("sed")
    end,
  },
  {
    "cbochs/grapple.nvim",
  },
}
