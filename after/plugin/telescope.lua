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

telescope.load_extension("fzf")
telescope.load_extension("aerial")
telescope.load_extension('projects')
telescope.load_extension("file_browser")
