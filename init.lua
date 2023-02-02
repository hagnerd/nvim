-- NOTE: Lazy.nvim
local ensure_lazy_exists = require("ensure.lazy_exists")

ensure_lazy_exists()
--

require("config.keymaps")

require("lazy").setup({
  "nvim-lua/plenary.nvim",
  { 'hagnerd/nvim-settings', lazy = false },
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "jose-elias-alvarez/null-ls.nvim" },
  { "hrsh7th/nvim-cmp" },
  "hrsh7th/cmp-nvim-lsp", -- LSP completions
  "hrsh7th/cmp-buffer", -- local buffer completion
  "hrsh7th/cmp-path", -- Path completions
  "hrsh7th/cmp-nvim-lua", -- Lua completion engine
  "milisims/nvim-luaref",
  "onsails/lspkind-nvim",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "hrsh7th/cmp-nvim-lsp-document-symbol",
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      vim.cmd("TSUpdate")
    end
  },
  "tpope/vim-repeat",
  "tpope/vim-fugitive",
  "tpope/vim-endwise",
  "tpope/vim-surround",
  {
    "windwp/nvim-autopairs",
    config = function ()
      require("nvim-autopairs").setup({})
    end
  },
  "christoomey/vim-tmux-runner",
  "christoomey/vim-tmux-navigator",
  {
    "junegunn/fzf",
    build = function()
      vim.fn["fzf#install"]()
    end
  },
  "junegunn/fzf.vim",
  "elixir-editors/vim-elixir",
  -- Appearance {
  "hoob3rt/lualine.nvim",
  "kyazdani42/nvim-web-devicons",
  "kdheepak/tabline.nvim",
  -- }

  -- Colorschemes {
  "folke/tokyonight.nvim",
  "nyoom-engineering/oxocarbon.nvim",
  "ellisonleao/gruvbox.nvim",
  "shaunsingh/nord.nvim",
  -- }

  "nvim-telescope/telescope.nvim",
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = function()
      vim.cmd.make()
    end
  },
  "nvim-telescope/telescope-ui-select.nvim",
  "nvim-telescope/telescope-file-browser.nvim",
  "ThePrimeagen/harpoon",
  "numToStr/Comment.nvim",
  "tpope/vim-eunuch",
  "lewis6991/gitsigns.nvim",
  "stevearc/aerial.nvim",
  "nvim-lua/lsp-status.nvim",
  {"hagnerd/nvim-cmp-co-authored-by"},
  {"hagnerd/co-authored-by-luasnip"},
  {"ray-x/lsp_signature.nvim"},
  "nvim-tree/nvim-tree.lua", -- Possible alternative https://github.com/nvim-neo-tree/neo-tree.nvim
  "LinArcX/telescope-env.nvim",
  {"pwntester/octo.nvim"},
  {"folke/neodev.nvim"},
  {"danymat/neogen"},
  {"Wansmer/treesj"},
  {"nvim-treesitter/nvim-treesitter-context"},
  {"b0o/SchemaStore.nvim"},
  {
    "folke/todo-comments.nvim",
    init = function()
      require("todo-comments").setup {}
    end
  },
  {"vim-test/vim-test"},
  -- Interested in styler.nvim "folke/styler.nvim",
  -- folke/which-key.nvim
  -- https://github.com/andymass/vim-matchup
  -- Cool but meh on usefulness https://github.com/ThePrimeagen/refactoring.nvim
  -- This looks dope as fuck https://github.com/cshuaimin/ssr.nvim
}, require("config.lazy"))

require("hagnerd.globals")
