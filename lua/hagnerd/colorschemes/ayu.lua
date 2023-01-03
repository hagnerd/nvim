local lualine = require("hagnerd/colorschemes/lualine")

local function setup()
  vim.g.material_style = "deep ocean"
  local colorscheme = "ayu"

  require("ayu").setup({
    mirage = true,
  })

  vim.cmd.colorscheme(colorscheme)

  lualine.setup(colorscheme)
end

local M = { setup = setup }

return M
