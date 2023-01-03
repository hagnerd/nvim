local function setup()
  local nord = "nord"

  vim.cmd.colorscheme(nord)

  require("hagnerd/colorschemes/lualine").setup(nord)
end

return {
  setup = setup,
}
