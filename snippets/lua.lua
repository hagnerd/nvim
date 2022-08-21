local luasnip = require("luasnip")

local text_node = luasnip.text_node
local insert_node = luasnip.insert_node
local snippet = luasnip.snippet

local local_require_snippet = snippet({
  trig = "lreq",
  describe = "Quickly define local _ = require(<dep>)"
},
{
  text_node("local "),
  insert_node(1, "$variable"),
  text_node(" = require(\""),
  insert_node(2, "$dependency"),
  text_node("\")")
})

return {
  local_require_snippet
}
