vim.keymap.set(
  "t",
  "<C-n><C-n>",
  "<C-\\><C-n>",
  { desc = "Remaps the way to enter normal mode when in the Neovim terminal" }
)

vim.keymap.set("n", "[b", "<CMD>bp<CR>", { desc = "Goes to the previous buffer" })
vim.keymap.set("n", "]b", "<CMD>bp<CR>", { desc = "Goes to the next buffer" })
