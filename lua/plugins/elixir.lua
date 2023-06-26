if os.getenv("NVIM_ENABLE_ELIXIR") == "1" then
  return {
    { "elixir-editors/vim-elixir" },
    { "brendalf/mix.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  }
end

return {}
