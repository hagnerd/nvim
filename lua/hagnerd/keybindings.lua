-- Move between wrapped lines, rather than jumping over wrapped segments
vim.keymap.set("n", "j", "gj", {silent = true})
vim.keymap.set("n", "k", "gk", {silent = true})

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

-- vim-test {
vim.keymap.set("n", "<leader>tn", "<CMD>TestNearest<CR>")
vim.keymap.set("n", "<leader>tf", "<CMD>TestFile<CR>")
vim.keymap.set("n", "<leader>ts", "<CMD>TestSuite<CR>")
vim.keymap.set("n", "<leader>tl", "<CMD>TestLast<CR>")
vim.keymap.set("n", "<leader>tv", "<CMD>TestVisit<CR>")
-- }

-- { Telescope
vim.keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", "<CMD>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", "<CMD>Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fh", "<CMD>Telescope help_tags<CR>")
-- }

-- Harpoon
-- vim.keymap.set("n", "<leader>ha", require("harpoon.mark").add_file, opts)
-- vim.keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu, opts)
-- vim.keymap.set("n", "<leader>hr", require("harpoon.ui").rm_file, opts)

-- -- terminal map
vim.keymap.set("t", "<C-n><C-n>", "<C-\\><C-n>")
