local lspkind = require("lspkind")
lspkind.init()

local cmp = require("cmp")

vim.opt.completeopt = { "menu", "menuone", "noselect" }

local function get_co_author_handles()
  local filename = vim.fn.stdpath('data') .. '/co-author-handles.json'
  local file = table.concat(vim.fn.readfile(filename), '')

  return vim.json.decode(file)
end

local co_author_handles = get_co_author_handles()

cmp.setup({
  experimental = {
    native_menu = false, -- Uses a new window
    -- ghost_text = true, -- shows you the text in-place that you might complete with
  },
  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        buffer = "[buf]",
        nvim_lsp = "[LSP]",
        nvim_lua = "[api]",
        path = "[path]",
        luasnip = "[snip]"
      }
    }
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ["<C-y>"] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    }),
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end
  },
  sources = cmp.config.sources({
    { name = "nvim_lua" },
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "path" },
    { name = "buffer", keyword_length = 5 },
    { name = "co-authored-by", option = { handles = co_author_handles } }
  }),
})
