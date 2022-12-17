
local function setup()
  local colorscheme = 'tokyonight'

  vim.cmd('colorscheme ' .. colorscheme)

  require('lualine').setup {
    options = {
      theme = colorscheme,
      disabled_filetypes = {'packer', 'NvimTree'},
    }
  }
end

return {
  setup = setup,
}
