local luasnip = require("luasnip")

require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets" })
local co_authored_by = require("co-authored-by-luasnip")

luasnip.config.set_config({
  history = true,
  updateevents = "TextChanged,TextChangedI",
  enable_autosnippets = true,
})

luasnip.add_snippets("gitcommit", {
  luasnip.snippet(
  {
    trig = "cab",
    descr = {'[Co-Authored-By]', 'Support for easily inserting Co-Authored-By: <name> <email>', 'into gitcommit message bodies'}
  },
  co_authored_by
  )
})

vim.keymap.set({"i", "s"}, "<C-k>", function()
  if luasnip.expand_or_jumpable then
    luasnip.expand_or_jump()
  end
end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-j>", function()
  if luasnip.jumpable(-1) then
    luasnip.jump(-1)
  end
end, {silent = true})
