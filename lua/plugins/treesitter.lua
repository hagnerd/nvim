return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.highlight.additional_vim_regex_highlighting = false
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "bash",
        "help",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "elixir",
        "rust",
        "ruby",
        "diff",
        "erlang",
        "git_rebase",
        "graphql",
        "jsdoc",
        "scss",
        "css",
      })
    end,
  },
}
