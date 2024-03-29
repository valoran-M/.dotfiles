return {
  "valoran-M/gruvbox.nvim",

  { "chentoast/marks.nvim",    config = function() require("marks").setup {}     end },

  { "lewis6991/gitsigns.nvim",   config = require('plugins.ui.gitsigns')   },
  { "goolord/alpha-nvim",        config = require('plugins.ui.alpha')      },
  { "akinsho/bufferline.nvim",   config = require('plugins.ui.bufferline') },
  { "nvim-lualine/lualine.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = require('plugins.ui.lualine') },
  { "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = require("plugins.ui.nvim-tree") },
}
