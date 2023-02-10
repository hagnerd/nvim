return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function()
    local nls = require("null-ls")
    return {
      sources = {
        nls.builtins.formatting.prettierd,
        nls.builtins.diagnostics.eslint_d,
        nls.builtins.formatting.stylua,
        nls.builtins.diagnostics.rubocop,
        nls.builtins.formatting.rubocop,
      },
    }
  end,
}
