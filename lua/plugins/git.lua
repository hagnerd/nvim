return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {},
  },
  {
    "TimUntersberger/neogit",
    opts = {},
  },
  {
    "akinsho/git-conflict.nvim",
    opts = {
      default_mappings = {
        ours = "<leader>cc", -- c = current
        theirs = "<leader>ci", -- i = incoming
        both = "<leader>cb",
        none = "<leader>c0",
        next = "]x",
        previous = "[x",
      },
    },
  },
  {
    "ruifm/gitlinker.nvim",
    opts = {},
  },
  {
    "f-person/git-blame.nvim",
    init = function()
      vim.g["gitblame_enabled"] = 0
    end,
  },
  { "tpope/vim-fugitive" },
}
