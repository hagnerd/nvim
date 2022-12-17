local lsp_helpers = require("hagnerd/lsp/helpers")

local servers = {
  "bashls",
  "cssls",
  "elixirls",
  "emmet_ls",
  "graphql",
  "html",
  "jsonls",
  "rust_analyzer",
  "solargraph",
  "sorbet",
  "sumneko_lua",
  "svelte",
  -- "tailwindcss",
  "tsserver",
  "yamlls",
}

require("mason").setup()
require("mason-lspconfig").setup({
  automatic_installation = true,
})

lsp_helpers.setup_servers(servers)

local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.code_actions.eslint_d.with({
      conditional = function()
        return vim.fn.executable("eslint_d") > 0
      end
    }),
    null_ls.builtins.diagnostics.eslint_d.with({
      conditional = function()
        return vim.fn.executable("eslint_d") > 0
      end
    }),
    null_ls.builtins.formatting.eslint_d.with({
      conditional = function()
        return vim.fn.executable("eslint_d") > 0
      end
    }),
    null_ls.builtins.formatting.prettierd.with({
      conditional = function()
        return vim.fn.executable("prettierd") > 0
      end
    }),
    null_ls.builtins.code_actions.gitsigns,
    null_ls.builtins.diagnostics.rubocop,
    null_ls.builtins.formatting.rubocop,
  }
})
