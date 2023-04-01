-- Move between wrapped lines, rather than jumping over wrapped segments
vim.keymap.set("n", "j", "gj", { silent = true })
vim.keymap.set("n", "k", "gk", { silent = true })

-- Convenience thing to not need to hold shift while pressing the ;/: key to output :
vim.keymap.set("n", "<leader>;", ":")

vim.keymap.set("n", "<leader>vv", ":vsp ~/.config/nvim/init.lua<CR>")
vim.keymap.set("n", "<leader>v_", ":sp ~/.config/nvim/inti.lua<CR>")
vim.keymap.set("n", "<leader>vt", ":tabnew ~/.config/nvim/inti.lua<CR>")
vim.keymap.set("n", "<leader>so", ":luafile ~/.config/nvim/inti.lua<CR>")

-- Makes Y behave like other capital operations
-- i.e. Yanks to the end of the line (instead of the whole line, which yy does already)
vim.keymap.set("n", "Y", "y$")

-- Centering {
-- {
-- Keeps the cursor in the same relative position on the screen when moving through matches both forwards and backwards
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- }

-- keeps the cursor in a consistent position when slupring a line upwards
vim.keymap.set("n", "J", "mzJ`z")
-- }

-- Moving Text {
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("i", "<C-j>", ":m .+1<CR>==")
vim.keymap.set("i", "<C-k>", ":m .-2<CR>==")
vim.keymap.set("n", "<leader>j", ":m .+1<CR>==")
vim.keymap.set("n", "<leader>k", ":m .-2<CR>==")
-- }

-- -- terminal map
vim.keymap.set("t", "<C-n><C-n>", "<C-\\><C-n>")
