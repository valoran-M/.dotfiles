local keymap = require('keymap.utils')
local        nmap,        imap,        cmap,        vmap,        xmap =
      keymap.nmap, keymap.imap, keymap.cmap, keymap.vmap, keymap.xmap

-- Leaderkey -------------------------------------------------------------------

nmap({ " ", "" })
xmap({ " ", "" })

-- Window ----------------------------------------------------------------------

nmap({
-- Navigation
  { "<C-h>", "<C-w>h" },
  { "<C-j>", "<C-w>j" },
  { "<C-k>", "<C-w>k" },
  { "<C-l>", "<C-w>l" },

-- Resize
  { "<C-Down>",  "<cmd>resize -2<cr>" },
  { "<C-Up>",    "<cmd>resize +2<cr>" },
  { "<C-Left>",  "<cmd>vertical resize +2<cr>" },
  { "<C-Right>", "<cmd>vertical resize -2<cr>" },
})

-- Buffer ----------------------------------------------------------------------

nmap({
-- Navigation
  { "<A-h>", "<cmd>bprevious<cr>" },
  { "<A-l>", "<cmd>bnext<cr>"     },

-- Navigation in
  { "(", "(zz" },
  { ")", ")zz" },
  { "{", "{zz" },
  { "}", "}zz" },
})

-- Text ------------------------------------------------------------------------

nmap({
-- Move up and down
  { "<A-j>", "<cmd>m .+1<cr>==" },
  { "<A-k>", "<cmd>m .-2<cr>==" },

-- Move char
  { "<right>", "xp"   },
  { "<left>",  "hxph" },
})

vmap({
-- Move up and down
  { "<A-j>", ":m '>+1<cr>gv=gv" },
  { "<A-k>", ":m '<-2<cr>gv=gv" },
-- Indent mode
  { "<", "<gv" },
  { ">", ">gv" },
})


-- Other -----------------------------------------------------------------------

nmap({
  { "<esc><esc>", "<cmd>nohlsearch<cr>"   },
  { "²", "<cmd>set invrelativenumber<CR>" },
})

imap({ "jk", "<esc>" })

-- Leader ----------------------------------------------------------------------

nmap({
  { "<leader>e",  "<cmd>NvimTreeToggle<cr>", { desc = "Explorer"           } },
  { "<leader>w",  "<cmd>w!<cr>",             { desc = "Save"               } },
  { "<leader>d",  "<cmd>Bdelete!<cr>",       { desc = "Close Buffer"       } },
  { "<leader>r",  [[:%s/\s\+$//e<cr>]],      { desc = "Remove + Trailling" } },

-- FZF
  { "<leader>f",  "<cmd>Files<cr>",    { desc = "Files"     } },
  { "<leader>G",  "<cmd>GFiles<cr>",   { desc = "Git files" } },
  { "<leader>b",  "<cmd>Buffers<cr>",  { desc = "Buffer"    } },
  { "<leader>h",  "<cmd>Helptags<cr>", { desc = "Help tags" } },
  { "<leader>rg", "<cmd>Rg<cr>",       { desc = "Ripgrep"   } },
  { "<leader>m",  "<cmd>Marks<cr>",    { desc = "Marks"     } },

-- Git
})
