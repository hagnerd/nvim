-- vim.opt.list = true
-- vim.opt.listchars = "eol:↵,tab:⇀,space:·"
-- vim.cmd[[set listchars=eol:↵,space:·]]

local function toggle_listchars()
  vim.cmd[[set list!]]
end

local function enable_listchars()
  vim.cmd[[set list]]
end

local function disable_listchars()
  vim.cmd[[set nolist]]
end

local def = {
  enable_by_default = false,
  chars = {
    eol = "↵",
    space = "·",
  },
}

local function setup(options)
  local opts = vim.tbl_extend("force", def, options or {})

  if opts.enable_by_default then
    enable_listchars()
  end

  vim.cmd("set listchars=eol:" .. opts.chars.eol .. ",space:" .. opts.chars.space)

  vim.cmd[[command! ListcharsToggle :lua require("hagnerd.listchars").toggle_listchars()]]
  vim.cmd[[command! ListcharsEnable :lua require("hagnerd.listchars").enable_listchars()]]
  vim.cmd[[command! ListcharsDisable :lua require("hagnerd.listchars").disable_listchars()]]
end

return {
  setup = setup,
  enable_listchars = enable_listchars,
  disable_listchars = disable_listchars,
  toggle_listchars = toggle_listchars,
}
