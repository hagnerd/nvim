require("nvim-settings")
require("hagnerd")

require("plugins/nvim_lsp_installer")
require("plugins/nvimTreesitter")
require("plugins/lsp")
require("plugins/completion")
require("plugins/harpoon")

require("issues")

require("alpha").setup(require("alpha.themes.theta").config)
