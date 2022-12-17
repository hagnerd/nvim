local packer = require("packer")

packer.startup({function(use)
  use "wbthomason/packer.nvim"
  use "nvim-lua/plenary.nvim"

  -- LSP {
  use "neovim/nvim-lspconfig"
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "jose-elias-alvarez/null-ls.nvim"
  -- }

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

  -- Treesitter {
  use {
    "nvim-treesitter/nvim-treesitter",
    run = function()
      vim.cmd [[TSUpdate]]
    end
  }
  use "nvim-treesitter/playground"
  -- }

  use "tpope/vim-repeat"
  use "tpope/vim-fugitive"
  use "tpope/vim-endwise"
  use "tpope/vim-surround"
  use "jiangmiao/auto-pairs" -- alternative use 'windwp/nvim-autopairs'

  use "christoomey/vim-tmux-runner"
  -- This includes a keybinding that overrides <C-\> which is a bummer because this is used for
  -- terminal keymappings so I need to figure that out.
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

  -- Appearance {
  use {"hoob3rt/lualine.nvim"}
  use {"kyazdani42/nvim-web-devicons"}
    -- Colors {
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
    -- }

  -- }

  -- Telescope and related extensions {
  use {
    "nvim-telescope/telescope.nvim",
    requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}},
  }
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
  use "nvim-telescope/telescope-file-browser.nvim"
  use "nvim-telescope/telescope-ui-select.nvim"
  -- }

  use "tpope/vim-dispatch"
  use "radenling/vim-dispatch-neovim"

  use "ThePrimeagen/git-worktree.nvim"
  use "ThePrimeagen/harpoon"

  use {
    "mattn/emmet-vim",
    config = function ()
      vim.g["user_emmet_leader_key"] = "<C-E>"
    end
  }
  use "numToStr/Comment.nvim"
  use "tpope/vim-eunuch"

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


  use "jparise/vim-graphql"

  -- Rust {
  use "simrat39/rust-tools.nvim"
  -- }

  use "fladson/vim-kitty" -- Syntax for Kitty terminal config file

  use {
    "goolord/alpha-nvim",
    config = function ()
      require("alpha").setup(require("alpha.themes.dashboard").config)
    end
  }

  use "stevearc/aerial.nvim"

  use "nvim-lua/lsp-status.nvim"

  use "git@github.com:hagnerd/nvim-settings.git"
  use "git@github.com:hagnerd/github-handles-coworkers"
  use "git@github.com:hagnerd/nvim-cmp-co-authored-by"
  use "git@github.com:hagnerd/co-authored-by-luasnip"

  -- Trying out these plugins {
  use "simrat39/symbols-outline.nvim" -- probably no
  use "ahmedkhalf/project.nvim" -- Do I really want to use this?
  use {"arjunmahishi/run-code.nvim"} -- leaning no
  use {"LinArcX/telescope-env.nvim"}
  use {"benfowler/telescope-luasnip.nvim"} -- leaning no
  use {"dhruvmanila/telescope-bookmarks.nvim"} -- leaning no
  use {"nvim-telescope/telescope-packer.nvim"}
  use {"gbrlsnchs/telescope-lsp-handlers.nvim"} -- leaning no
  use {"ray-x/lsp_signature.nvim"}
  use {"cljoly/telescope-repo.nvim"}

  -- GITHUB COPILOT
  use "github/copilot.vim"
  -- }

  -- nvim-tree {
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  }
  -- }

  -- this looks super interesting
  -- use "glacambre/firenvim"
  --
  -- use "dstein64/vim-startuptime"
  --
  -- use "mhinz/vim-startify"
  -- OR
  -- use "goolord/alpha-nvim"
  --
  -- use "AckslD/nvim-neoclip.lua"
  -- use "romgrk/barbar.nvim"
end,
config = {
  max_jobs = 10,
  display = {
    open_fn = function()
      return require("packer.util").float({})
    end
  }
}})
