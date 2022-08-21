require("project_nvim").setup({
  manual_mode = false,

  detection_methods = {"lsp", "pattern"},
  patterns = {".git", "mix.exs", "cargo.toml", "package.json"},
  datapath = vim.fn.stdpath("data")
})
