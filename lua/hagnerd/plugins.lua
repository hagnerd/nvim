local packer = require("packer");

packer.startup({function(use)
  use "wbthomason/packer.nvim"
  use "neovim/nvim-lspconfig"
  use "jose-elias-alvarez/null-ls.nvim"

  -- Completion {
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp" -- LSP completions
  use "hrsh7th/cmp-buffer" -- local buffer completion
  use "hrsh7th/cmp-path" -- Path completions
  use "hrsh7th/cmp-nvim-lua" -- Lua completion engine
  use "onsails/lspkind-nvim"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-nvim-lsp-document-symbol"
  -- }

  use {
    "nvim-treesitter/nvim-treesitter",
    run = function()
      vim.cmd [[TSUpdate]]
    end
  }
  use "nvim-treesitter/playground"

  use "tpope/vim-repeat"
  use "tpope/vim-fugitive"
  use "tpope/vim-endwise"
  use "tpope/vim-surround"
  use "jiangmiao/auto-pairs" -- alternative use 'windwp/nvim-autopairs'

  use "christoomey/vim-tmux-runner"
  use "christoomey/vim-tmux-navigator"

  use {
    "junegunn/fzf",
    run = function()
      vim.fn["fzf#install"]()
    end
  }
  use "junegunn/fzf.vim"

  use {
    "vim-test/vim-test",
    config = function ()
      vim.g["test#strategy"] = "neovim"
    end
  }

  -- { Clojure
  use "tpope/vim-fireplace"
  use "guns/vim-sexp"
  use "tpope/vim-sexp-mappings-for-regular-people"
  -- use { "Olical/aniseed", { tag = "v3.22.1" }}
  use "clojure-vim/vim-jack-in"
  -- }

  -- REPL that works for lisp-like languages out of the box
  -- i.e. Fennel, Clojure, Racket, Scheme, ...
  -- use {"Olical/conjure", { tag = "v4.24.1" }}

  -- { Elixir
  use "elixir-editors/vim-elixir"
  -- }

  -- { JavaScript/TypeScript
  use "pangloss/vim-javascript"
  use "MaxMEllon/vim-jsx-pretty"
  use "leafgarland/typescript-vim"
  use "peitalin/vim-jsx-typescript"
  use "evanleck/vim-svelte"
  -- }

  -- { MD/MDX
  -- use "plasticboy/vim-markdown"
  -- use "jxnblk/vim-mdx-js"
  -- }

  -- { Lua
  use "tjdevries/nlua.nvim" -- not really using
  use "euclidianAce/BetterLua.vim"
  -- }

  -- Colors and hex and stuff
  use "tjdevries/colorbuddy.nvim" -- not using
  use "chrisbra/Colorizer" -- not using

  -- color themes
  use "drewtempelmeyer/palenight.vim"
  use "haishanh/night-owl.vim"
  use "Mofiqul/dracula.nvim"
  -- use "ayu-theme/ayu-vim"
  use "Shatur/neovim-ayu"
  use "bbenzikry/snazzybuddy.nvim"
  use "marko-cerovac/material.nvim"
  use "folke/tokyonight.nvim"

  -- General utilities
  use "nvim-lua/plenary.nvim"
  use {
    "nvim-telescope/telescope.nvim",
    requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}},
  }
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
  use "nvim-telescope/telescope-file-browser.nvim"
  use "tpope/vim-dispatch"
  use "radenling/vim-dispatch-neovim"

  use {"kyazdani42/nvim-web-devicons"}

  use {"hoob3rt/lualine.nvim"}

  use "williamboman/nvim-lsp-installer"
  use "ThePrimeagen/git-worktree.nvim"
  use "ThePrimeagen/harpoon"

  use {
    "mattn/emmet-vim",
    config = function ()
      vim.g["user_emmet_leader_key"] = "<C-E>"
    end
  }

  -- use "mhartington/formatter.nvim"

  -- use 'mfussenegger/nvim-lint'
  use "numToStr/Comment.nvim"

  -- Ziglang {
  use "ziglang/zig.vim"
  -- }

  -- MISC
  use "ruifm/gitlinker.nvim"
  use "lewis6991/gitsigns.nvim"

  if vim.fn.executable("gh") then
    use "pwntester/octo.nvim"
  end

  use {"folke/twilight.nvim", cmd = {"Twilight", "TwilightDisable", "TwilightEnable"}}

  use "tpope/vim-eunuch"

  use "jparise/vim-graphql"

  -- Rust {
  use "simrat39/rust-tools.nvim"
  -- }

  use "simrat39/symbols-outline.nvim"

  use "fladson/vim-kitty"

  use {
    "goolord/alpha-nvim",
    config = function ()
      require("alpha").setup(require("alpha.themes.dashboard").config)
    end
  }

  -- use "kyazdani42/nvim-tree.lua"

  use "stevearc/aerial.nvim"

  use "nvim-lua/lsp-status.nvim"

  use "ahmedkhalf/project.nvim"
  use "git@github.com:hagnerd/nvim-settings.git"
  use "git@github.com:hagnerd/github-handles-coworkers"

  -- this looks super interesting
  -- use "glacambre/firenvim"
  --
  -- use "dstein64/vim-startuptime"
  --
  -- use "mhinz/vim-startify"
  -- OR
  -- use "goolord/alpha-nvim"
  --
  -- use "tanvirtin/vgit.nvim"
  -- use "AckslD/nvim-neoclip.lua"
  -- use "romgrk/barbar.nvim"
  -- use "glepnir/dashboard-nvim"
  -- use "ahmedkhalf/project.nvim"
end,
config = {
  max_jobs = 10,
}})
