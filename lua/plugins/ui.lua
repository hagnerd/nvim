return {
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({
        sections = {
          lualine_b = {
            {
              function()
                local key = require("grapple").key()
                return "  [" .. key .. "]"
              end,
              cond = require("grapple").exists,
            },
          },
        },
        options = {
          theme = "auto",
        },
      })
    end,
  },
  { "nvim-tree/nvim-web-devicons" },
}
