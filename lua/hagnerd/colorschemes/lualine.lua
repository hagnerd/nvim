local function setup(colorscheme)
  colorscheme = colorscheme or "tokyonight"

  require('lualine').setup {
    sections = {
      lualine_x = {
        {
          require("lazy.status").updates,
          cond = require("lazy.status").has_updates,
          color = { fg = "#ff9e64" },
        },
      },
    },
    options = {
      theme = colorscheme,
      disabled_filetypes = {'packer', 'NvimTree'},
    }
  }

  require('tabline').setup {}
end

return { setup = setup }
