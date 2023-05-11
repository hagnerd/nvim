return {
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local startify = require("alpha.themes.startify")
      local header = [[
 ██████╗ ██╗  ██╗ █████╗  ██████╗ ███╗   ██╗███████╗██████╗ ██████╗ 
██╔═══██╗██║  ██║██╔══██╗██╔════╝ ████╗  ██║██╔════╝██╔══██╗██╔══██╗
██║██╗██║███████║███████║██║  ███╗██╔██╗ ██║█████╗  ██████╔╝██║  ██║
██║██║██║██╔══██║██╔══██║██║   ██║██║╚██╗██║██╔══╝  ██╔══██╗██║  ██║
╚█║████╔╝██║  ██║██║  ██║╚██████╔╝██║ ╚████║███████╗██║  ██║██████╔╝
 ╚╝╚═══╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚═════╝ 
      ]]

      startify.section.header.val = vim.split(header, "\n", { trimempty = true })
      require("alpha").setup(startify.opts)
    end,
  },
}
