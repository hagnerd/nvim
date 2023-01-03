local function setup()
  local colorscheme = "oxocarbon"
  vim.opt.background = "dark" -- set this to dark or light
  vim.cmd.colorscheme(colorscheme)
  require("hagnerd/colorschemes/lualine").setup()
end

return {
  setup = setup,
}
