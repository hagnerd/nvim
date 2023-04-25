local Keymaps = {}

local opts = { noremap = true, silent = true, buffer = 0 }
function Keymaps.on_attach(_, bufnr)
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
	vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "<leader>k", vim.lsp.buf.signature_help, opts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

	vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
	vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
	vim.keymap.set("n", "<localleader>ff", function()
		vim.lsp.buf.format({ async = true })
	end, opts)
end

return Keymaps
