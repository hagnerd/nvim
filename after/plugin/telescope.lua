local telescope = require("telescope")

telescope.setup({
  defaults = {
    sorting_strategy = "ascending",
    layout_config = {
      prompt_position = "top",
    },
    mappings = {
      n = {
        ["<C-d>"] = require("telescope.actions").delete_buffer,
      },
      i = {
        ["<C-d>"] = require("telescope.actions").delete_buffer,
      },
    },
  },
  extensions = {
    fzf = {
      fuzzy = true, -- False will only do exact matching
      override_generic_sorter = false, -- Override generic sorter
      override_file_sorter = true, -- override file sorter
      case_mode = "smart_case", -- ignore casing unless you type a capital character
    },
  }
})

-- telescope.load_extension("fzf")
telescope.load_extension("aerial")
telescope.load_extension('projects')
telescope.load_extension("file_browser")
telescope.load_extension("env")
telescope.load_extension("packer")
telescope.load_extension("luasnip")
telescope.load_extension("bookmarks")
telescope.load_extension("ui-select")
telescope.load_extension("repo")
telescope.load_extension("lsp_handlers")

vim.keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", "<CMD>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", "<CMD>Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fh", "<CMD>Telescope help_tags<CR>")
