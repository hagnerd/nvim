if os.getenv("NVIM_ENABLE_ELIXIR") == "1" then
  return {
    { "elixir-editors/vim-elixir" },
    { "brendalf/mix.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
    {
      "elixir-tools/elixir-tools.nvim",
      version = "*",
      event = { "BufReadPre", "BufNewFile" },
      dependencies = {
        "hrsh7th/nvim-cmp",
      },
      config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local elixir = require("elixir")
        local elixirls = require("elixir.elixirls")

        elixir.setup({
          credo = { enable = true },
          elixirls = {
            capabilities = capabilities,
            enable = true,
            settings = elixirls.settings({
              dialyzerEnabled = false,
              fetchDeps = true,
              enableTestLenses = true,
              suggestSpecs = true,
            }),
          },
        })
      end,
    },
  }
end

return {}
