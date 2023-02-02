local lspconfig = require("lspconfig")
local lsp_status = require("lsp-status")

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local function setup_keybindings(_ --[[client]] , bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = 0 })
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
  vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, { buffer = 0 })
  vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { buffer = 0 })

  vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, { buffer = 0 })
  vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, { buffer = 0 })
  vim.keymap.set("n", "<leader>wl", function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end,
    { buffer = 0 })

  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = 0 })
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = 0 })

  vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = 0 })
  vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { buffer = 0 })
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { buffer = 0 })
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
  vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { buffer = 0 })

  vim.keymap.set("n", "<localleader>ff", function() vim.lsp.buf.format({ async = true }) end, { buffer = 0 })
end

local function on_attach(client, bufnr)
  lsp_status.on_attach(client)
  setup_keybindings(client, bufnr)
end

local default_setup = {
  on_attach = on_attach,
  capabilities = vim.tbl_extend("keep", capabilities, lsp_status.capabilities),
}

local function make_opts(server_name)
  local loaded, module = pcall(require, "hagnerd/lsp/servers/" .. server_name)

  if loaded then
    return vim.tbl_deep_extend("force", default_setup, module)
  else
    return default_setup
  end
end

local function setup_servers(servers)
  for _, server in ipairs(servers) do
    lspconfig[server].setup(make_opts(server))
  end
end

local Helpers = {
  setup_servers = setup_servers,
}

return Helpers
