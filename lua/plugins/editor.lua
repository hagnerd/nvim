return {
  { "tpope/vim-repeat" },
  {
    "stevearc/oil.nvim",
    keys = {
      { "-", "<cmd>lua require('oil').open()<CR>", desc = "Open the parent directory of the current file" },
    },
    opts = {},
  },
  {
    "kevinhwang91/nvim-bqf",
    dependencies = { "junegunn/fzf" },
    opts = {},
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
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump({
            search = {
              mode = function(str)
                return "\\<" .. str
              end,
            },
          })
        end,
        desc = "Flash",
      },
      {
        "S",
        mode = { "n", "o", "x" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
      {
        "r",
        mode = "o",
        function()
          require("flash").remote()
        end,
        desc = "Remote Flash",
      },
      {
        "R",
        mode = { "o", "x" },
        function()
          require("flash").treesitter_search()
        end,
        desc = "Flash Treesitter Search",
      },
      {
        "<c-s>",
        mode = { "c" },
        function()
          require("flash").toggle()
        end,
        desc = "Toggle Flash Search",
      },
    },
  },
  "chaoren/vim-wordmotion",
  {
    "chrisgrieser/nvim-various-textobjs",
    opts = {
      useDefaultKeymaps = true,
    },
  },
}
