if vim.fn.executable("lazgit -v") then
  return {
    "kdheepak/lazygit.nvim",
  }
else
  return {
    "kdheepak/lazygit.nvim",
    enabled = false,
  }
end
