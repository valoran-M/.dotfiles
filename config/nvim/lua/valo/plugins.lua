-- Automatically install pacer
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local lazy = require("lazy")

-- Install your plugins here
lazy.setup({
  "junegunn/vim-plug",
  "nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
  "nvim-lua/plenary.nvim", -- Useful lua functions used by lots of plugins

  "folke/which-key.nvim",
  "akinsho/toggleterm.nvim",
  "numToStr/Comment.nvim", -- Easily comment stuff
  "windwp/nvim-autopairs", -- Autopairs, integrates with both cmp and treesitter
  "lewis6991/gitsigns.nvim",

  "junegunn/fzf",
  "junegunn/fzf.vim",

  -- interface
  "goolord/alpha-nvim",
  "kyazdani42/nvim-web-devicons",
  "kyazdani42/nvim-tree.lua",
  "akinsho/bufferline.nvim",
  "nvim-lualine/lualine.nvim",
  "lukas-reineke/indent-blankline.nvim",
  "moll/vim-bbye",

  -- Colorschemes
  "valoran-M/gruvbox.nvim",

  -- cmp plugins
  {"hrsh7th/nvim-cmp",
    dependencies={
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-cmdline",
      "kdheepak/cmp-latex-symbols",
    }
  },
  -- LSP
  "neovim/nvim-lspconfig", -- enable LSP
  "williamboman/nvim-lsp-installer",
  "jose-elias-alvarez/null-ls.nvim", -- LSP diagnostics and code actions
  "simrat39/rust-tools.nvim",
  "folke/trouble.nvim",

  -- Ocaml
  "whonore/Coqtail",

  -- Telescope
  "nvim-telescope/telescope.nvim",
  'nvim-telescope/telescope-media-files.nvim',
  "kdheepak/lazygit.nvim",

  -- snippets
  "L3MON4D3/LuaSnip", --snippet engine
  "rafamadriz/friendly-snippets", -- a bunch of snippets to use

  --Latex
  "andymass/vim-matchup",
  "lervag/vimtex",

  "machakann/vim-sandwich",

  -- Treesitter
  "nvim-treesitter/nvim-treesitter",

  "p00f/nvim-ts-rainbow",
  "nvim-treesitter/playground",
  "JoosepAlviste/nvim-ts-context-commentstring",

  "mbbill/undotree",
  "chentoast/marks.nvim",

  "norcalli/nvim-colorizer.lua",

  "ellisonleao/glow.nvim",
  "RaafatTurki/hex.nvim",

  "Fymyte/rasi.vim",
  "krady21/compiler-explorer.nvim",
  "stevearc/dressing.nvim",
  { "valo/arrakis.vim", dir="~/workspace/vim/arrakis.vim", dev=true }
})
