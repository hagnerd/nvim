require("hagnerd.globals")

require("hagnerd.keybindings")
require("hagnerd.plugins")
local plugin = require("hagnerd.listchars")
plugin.setup()

require("hagnerd.appearance")

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false
    }
)
