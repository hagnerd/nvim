local Lsp = {}

--- Helper function that accepts a callback that takes a client,
--- and a buffer and leverages LspAttach
---@param on_attach fun(client: lsp.Client, buffer: Buffer):nil
function Lsp.on_attach(on_attach)
  vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
      local buffer = args.buf
      local client = vim.lsp.get_client_by_id(args.data.client_id)
      on_attach(client, buffer)
    end,
  })
end

return Lsp
