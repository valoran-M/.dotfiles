return {
-- Colorscheme
  "valoran-M/gruvbox.nvim",

-- Language
  "whonore/Coqtail",
  "ELLIOTTCABLE/vim-menhir",
  "andymass/vim-matchup",
  "lervag/vimtex",
  "Fymyte/rasi.vim",
  "ellisonleao/glow.nvim",

  { "RaafatTurki/hex.nvim",
    opts = {dump_cmd = 'xxd -g 1', assemble_cmd = 'xxd -r', } },


-- Snippets
  "L3MON4D3/LuaSnip",
  "rafamadriz/friendly-snippets",


-- Utils
  "nvim-lua/popup.nvim",
  "nvim-lua/plenary.nvim",
  "moll/vim-bbye",
  "machakann/vim-sandwich",
  "stevearc/dressing.nvim",
  "cohama/lexima.vim",
  "krady21/compiler-explorer.nvim",
  "norcalli/nvim-colorizer.lua",
  "junegunn/vim-peekaboo",
  "machakann/vim-highlightedyank",

  "mbbill/undotree",
  { "chentoast/marks.nvim", config = function() require('marks').setup {} end },
}
