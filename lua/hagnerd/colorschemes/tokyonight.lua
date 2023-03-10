local function setup()
  local colorscheme = 'tokyonight'

  vim.cmd.colorscheme(colorscheme)

  require("hagnerd/colorschemes/lualine").setup(colorscheme)
end

return {
  setup = setup,
}
