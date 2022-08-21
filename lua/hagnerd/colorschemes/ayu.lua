local function setup()
  vim.g.material_style = "deep ocean"
  require("ayu").setup({
    mirage = true,
  })
  vim.cmd[[colorscheme ayu]]
end

local M = { setup = setup }

return M
