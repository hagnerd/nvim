local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
  ensure_installed = {
    "bash",
    "css",
    "elixir",
    "erlang",
    "fennel",
    "graphql",
    "haskell",
    "heex",
    "html",
    "javascript",
    "json",
    "jsdoc",
    "lua",
    "markdown",
    "ruby",
    "rust",
    "scss",
    "svelte",
    "typescript",
    "tsx",
    "zig",
  },
  highlight = { enable = true, additional_vim_regex_highlighting = false },
  auto_install = true,
  playground = {
    enable = true,
    updatetime = 25,
    persist_queries = false,
    keybindings = {
      toggle_query_editor = "o",
      toggle_hl_groups = "i",
      toggle_injected_languages = "t",
      toggle_anonymous_nodes = "a",
      toggle_language_display = "I",
      focus_language = "f",
      unfocus_language = "F",
      update = "R",
      goto_node = "<CR>",
      show_help = "?",
    },
  },
})