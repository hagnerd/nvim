local function setup()
  local colorscheme = 'gruvbox'
  vim.o.background = "dark"
  vim.cmd.colorscheme(colorscheme)

  require("hagnerd/colorschemes/lualine").setup(colorscheme)
end

return {
  setup = setup,
}
