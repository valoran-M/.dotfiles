return {
  "tpope/vim-fugitive",

  config = function()
    local keymap = require('keymap.utils')
    local nmap = keymap.nmap
    nmap({
      { "<localleader>gs", "<cmd>Git<cr>",          { desc = "[G]it + [S]tatus" }},
      { "<localleader>gg", "<cmd>tab Git<cr>",      { desc = "[G]it + [S]tatus" }},
      { "<localleader>gl", "<cmd>tab Git log<cr>",  { desc = "[G]it + [L]og"    }},
      { "<localleader>gb", "<cmd>Git blame<cr>",    { desc = "[G]it + [B]lame"  }},
      { "<localleader>gd", "<cmd>Gvdiffsplit<cr>",  { desc = "[G]it + [D]iff"   }},
    })
  end
}
