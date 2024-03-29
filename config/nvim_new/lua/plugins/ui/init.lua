return {
  "valoran-M/gruvbox.nvim",

  require('plugins.ui.alpha'),
  require('plugins.ui.gitsigns'),
  require('plugins.ui.bufferline'),
  require('plugins.ui.lualine'),
  require('plugins.ui.nvim-tree'),

  { 'chentoast/marks.nvim', config = function() require('marks').setup {} end },
}

