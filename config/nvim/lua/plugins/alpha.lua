return {
  "goolord/alpha-nvim",
  config = function ()
    local alpha = require('alpha')
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.val = {
      [[                               __                ]],
      [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
      [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
      [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
      [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
      [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
    }
    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file",      ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "󰈞  Find file",     ":Files<CR>"),
      dashboard.button("t", "󰊄  Find text",     ":Rg <CR>"),
      dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
      dashboard.button("q", "󰅚  Quit Neovim",   ":qa<CR>"),
    }
    alpha.setup(dashboard.opts)
  end
}
