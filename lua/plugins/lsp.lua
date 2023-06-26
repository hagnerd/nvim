return {
  {
    "L3MON4D3/LuaSnip",
    build = "make install_jsregexp",
    config = function()
      local luasnip = require("luasnip")
      luasnip.config.set_config({
        history = true,
        updateevents = "TextChanged,TextChangedI",
        enable_autosnippets = true,
      })
      vim.keymap.set({ "i", "s" }, "<C-k>", function()
        if luasnip.expand_or_jumpable then
          luasnip.expand_or_jump()
        end
      end, { silent = true })

      vim.keymap.set({ "i", "s" }, "<C-j>", function()
        if luasnip.jumpable(-1) then
          luasnip.jump(-1)
        end
      end, { silent = true })
    end,
  },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "saadparwaiz1/cmp_luasnip" },
  { "onsails/lspkind.nvim" },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
    },
    opts = function()
      local lspkind = require("lspkind")
      return {
        formatting = {
          format = lspkind.cmp_format({
            mode = "symbol_text",
            menu = {
              buffer = "[buf]",
              nvim_lsp = "[LSP]",
              nvim_lua = "[api]",
              path = "[path]",
              luasnip = "[snip]",
            },
          }),
        },
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = require("cmp").mapping.preset.insert({
          ["<C-p>"] = require("cmp").mapping.select_prev_item(),
          ["<C-n>"] = require("cmp").mapping.select_next_item(),
          ["<C-d>"] = require("cmp").mapping.scroll_docs(-4),
          ["<C-f>"] = require("cmp").mapping.scroll_docs(4),
          ["<C-e>"] = require("cmp").mapping.abort(),
          ["<C-y>"] = require("cmp").mapping.confirm({
            behavior = require("cmp").ConfirmBehavior.Insert,
            select = true,
          }),
        }),
        sources = require("cmp").config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
        }),
      }
    end,
    config = function(_, opts)
      require("cmp").setup(opts)
    end,
  },
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    opts = {
      ensure_installed = {
        "stylua",
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      { "folke/neoconf.nvim", cmd = "Neoconf", config = true },
      { "folke/neodev.nvim", opts = { experimental = { pathStrict = true } } },
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      {
        "hrsh7th/cmp-nvim-lsp",
      },
    },
    ---@class PluginLspOpts
    opts = {
      diagnostics = {
        underline = true,
        update_in_insert = false,
        virtual_text = { spacing = 4, prefix = "●" },
        severity_sort = true,
      },
      -- Automatically format on save
      autoformat = true,
      format = {
        formatting_options = nil,
        timeout_ms = nil,
      },
      ---@type lspconfig.options
      servers = {
        jsonls = {},
        elixirls = {
          enable = true,
          credo = {},
          settings = {
            dialyzerEnabled = false,
            enableTestLenses = true,
          },
        },
        lua_ls = {
          settings = {
            Lua = {
              workspace = {
                checkThirdParty = false,
              },
              completion = {
                callSnippet = "Replace",
              },
            },
          },
        },
      },
    },
    config = function(_, opts)
      require("util/lsp").on_attach(function(client, bufnr)
        require("util/lsp/format").on_attach(client, bufnr)
        require("util/lsp/keymaps").on_attach(client, bufnr)
      end)
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "cssls",
          "cssmodules_ls",
          "emmet_ls",
          "graphql",
          "html",
          "jsonls",
          "ruby_ls",
          "sorbet",
          "tsserver",
          "yamlls",
          "elixirls",
        },
      })

      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      require("mason-lspconfig").setup_handlers({
        function(server_name)
          local server_opts = opts.servers[server_name] or {}
          require("lspconfig")[server_name].setup(vim.tbl_extend("force", { capabilities = capabilities }, server_opts))
        end,
      })
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "eslint_d",
        "prettierd",
        "rubocop",
      },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mason.nvim" },
    opts = function()
      local nls = require("null-ls")
      return {
        root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
        sources = {
          -- Code Actions
          nls.builtins.code_actions.gitsigns,
          nls.builtins.code_actions.eslint_d,
          --
          -- -- Diagnostics
          nls.builtins.diagnostics.eslint_d,
          nls.builtins.diagnostics.credo,
          --
          -- -- Formatting
          nls.builtins.formatting.eslint_d,
          nls.builtins.formatting.mix,
          nls.builtins.formatting.prettierd,
          nls.builtins.formatting.rubocop,
          nls.builtins.formatting.shfmt,
          nls.builtins.formatting.stylua,
        },
      }
    end,
  },
}
