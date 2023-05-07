local fn = vim.fn

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

-- Autocommand that reloads neovim whenever you save the plugins.lua file
--[[ vim.cmd [[  ]]
--[[   augroup packer_user_config  ]]
--[[     autocmd! ]]
--[[     autocmd BufWritePost plugins.lua source <afile> | Lazy install ]]
--[[   augroup end  ]]
--[[ ]]

local lazy = require("lazy")

-- Install your plugins here
lazy.setup({
  "nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
  "nvim-lua/plenary.nvim", -- Useful lua functions used by lots of plugins

  "folke/which-key.nvim",
  "akinsho/toggleterm.nvim",
  "numToStr/Comment.nvim", -- Easily comment stuff
  "windwp/nvim-autopairs", -- Autopairs, integrates with both cmp and treesitter
  "mhartington/formatter.nvim",
  "lewis6991/gitsigns.nvim",
  
  -- interface
  "goolord/alpha-nvim",
  "kyazdani42/nvim-web-devicons",
  "kyazdani42/nvim-tree.lua",
  "akinsho/bufferline.nvim",
  "nvim-lualine/lualine.nvim",
  "lukas-reineke/indent-blankline.nvim",
  "moll/vim-bbye",

  -- Colorschemes
  "Mofiqul/dracula.nvim",
  "altercation/vim-colors-solarized",
  "ellisonleao/gruvbox.nvim",
  "loctvl842/monokai-pro.nvim",

  -- cmp plugins
  "hrsh7th/nvim-cmp", -- The completion plugin
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer", -- buffer completions
  "hrsh7th/cmp-path", -- path completions
  "hrsh7th/cmp-cmdline", -- cmdline completions
  "saadparwaiz1/cmp_luasnip", -- snippet completions

  -- LSP 
  "neovim/nvim-lspconfig", -- enable LSP
  "williamboman/nvim-lsp-installer",
  "jose-elias-alvarez/null-ls.nvim", -- LSP diagnostics and code actions
  "simrat39/rust-tools.nvim",
  "folke/trouble.nvim",
  "tomtomjhj/coq-lsp.nvim",

  -- Ocaml
  "whonore/Coqtail",

  -- Telescope
  "nvim-telescope/telescope.nvim",
  'nvim-telescope/telescope-media-files.nvim',

  -- snippets
  "L3MON4D3/LuaSnip", --snippet engine
  "rafamadriz/friendly-snippets", -- a bunch of snippets to use

  --Latex
  "lervag/vimtex",
  "peterbjorgensen/sved",

  -- Treesitter
  "nvim-treesitter/nvim-treesitter",
  
  "p00f/nvim-ts-rainbow",
  "nvim-treesitter/playground", 
  "JoosepAlviste/nvim-ts-context-commentstring",


  "RaafatTurki/hex.nvim",

  "vigoux/LanguageTool.nvim",
  "Fymyte/rasi.vim",
})
