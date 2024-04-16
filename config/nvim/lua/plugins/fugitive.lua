return {
  "tpope/vim-fugitive",

  config = function()
    local keymap = require('keymap.utils')
    local nmap = keymap.nmap
    nmap({
      { "<leader>gs", "<cmd>Git<cr>",          { desc = "[G]it + [S]tatus" }},
      { "<leader>gg", "<cmd>tab Git<cr>",      { desc = "[G]it + [S]tatus" }},
      { "<leader>gl", "<cmd>tab Git log<cr>",  { desc = "[G]it + [L]og"    }},
      { "<leader>gb", "<cmd>Git blame<cr>",    { desc = "[G]it + [B]lame"  }},
      { "<leader>gd", "<cmd>Gvdiffsplit<cr>",  { desc = "[G]it + [D]iff"   }},
    })
  end
}
