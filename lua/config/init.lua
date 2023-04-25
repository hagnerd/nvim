vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.opt.autoindent = true

vim.opt.autowrite = true -- Enable auto write
vim.opt.clipboard = "unnamedplus" -- Sync with system clipboard
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.backspace = "indent,eol,start" -- Backspace deletes like most programs in insert mode

vim.opt.cursorline = true -- Enable highlighting of the current line

vim.opt.joinspaces = false

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Scrolloff
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10

vim.opt.shiftwidth = 2 -- Size of indent
vim.opt.tabstop = 2 -- Number of spaces tabs count for
vim.opt.shiftround = true
vim.opt.expandtab = true

-- Splitting
vim.opt.splitbelow = true -- Puts new windows below current
vim.opt.splitright = true -- Puts new windows to the right of current

vim.opt.termguicolors = true -- True color support

-- Gutter
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.signcolumn = "yes" -- Always show the sign column

vim.opt.shortmess:append({ c = true })
