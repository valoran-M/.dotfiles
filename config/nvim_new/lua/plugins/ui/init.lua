return {
  require('plugins.ui.alpha'),
  require('plugins.ui.gitsigns'),
  require('plugins.ui.lualine'),
  require('plugins.ui.nvim-tree'),
  require('plugins.ui.indentline'),

  { 'chentoast/marks.nvim', config = function() require('marks').setup {} end },
}

