local function toggle_listchars()
  vim.cmd[[set list!]]
end

local function enable_listchars()
  vim.cmd[[set list]]
end

local function disable_listchars()
  vim.cmd[[set nolist]]
end

local default_options = {
  enable_by_default = false,
  chars = {
    eol = "↵",
    space = "·",
    nbsp = "·",
    trail = "·",
    tab = "»\\ ",
    extends = "›",
    precedes = "‹",
  },
}

local function to_listchars(tbl)
  local output = {}

  for key in pairs(tbl) do
    table.insert(output, key .. ":" .. tbl[key])
  end

  return table.concat(output, ",")
end

local function setup(options)
  local opts = vim.tbl_extend("force", default_options, options or {})

  if opts.enable_by_default then
    enable_listchars()
  end

  vim.cmd("set listchars=" .. to_listchars(opts.chars))

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
