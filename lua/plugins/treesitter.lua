return {
  {
    "nvim-treesitter/playground",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "RRethy/nvim-treesitter-endwise",
    },
    build = ":TSUpdate",
    opts = {
      auto_install = true,
      context_commentstring = { enable = true, enable_autocmd = false },
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = { "lua", "vim", "vimdoc" },
      endwise = {
        enable = true,
      },
      playground = {
        enable = true,
        disable = {},
        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false, -- Whether the query persists across vim sessions
        keybindings = {
          toggle_query_editor = "o",
          toggle_hl_groups = "i",
          toggle_injected_languages = "t",
          toggle_anonymous_nodes = "a",
          toggle_language_display = "I",
          focus_language = "f",
          unfocus_language = "F",
          update = "R",
          goto_node = "<cr>",
          show_help = "?",
        },
      },
    },
    ---@param opts TSConfig
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },
  -- {
  --   "nvim-treesitter/nvim-treesitter-context",
  -- },
}
