-- Coq

local function set_hl(name, opts) vim.api.nvim_set_hl(0, name, opts) end
set_hl("CoqtailSent",     { bg = "#574300" })
set_hl("CoqtailChecked",  { bg = "#30423c" })

vim.g.coqtail_noimap = true
vim.g.coqtail_map_prefix = "<localleader>c"

vim.cmd('autocmd FileType coq lua KeymapCoq()')
function KeymapCoq()
  vim.keymap.set("i", "<A-Up>",   "<Plug>CoqUndo")
  vim.keymap.set("i", "<A-Down>", "<Plug>CoqNext")
  vim.keymap.set("i", "<A-Right>","<Plug>CoqToLine")

  vim.keymap.set("n", "<A-Down>", "<Plug>CoqNext zz")
  vim.keymap.set("n", "<A-Up>",   "<Plug>CoqUndo zz")
  vim.keymap.set("n", "<A-Right>","<Plug>CoqToLine zz")
  vim.keymap.set("n", "<A-n>", "<Plug>CoqNext <Plug>CoqJumpToEnd")
  vim.keymap.set("n", "<A-N>", "<Plug>CoqUndo <Plug>CoqJumpToEnd")
  vim.keymap.set("n", "<A-,>","<Plug>CoqToLine")
  vim.keymap.set("n", "K", "<Plug>CoqCheck")

  --[[ vim.keymap.set("n", "P", "<Plug>Coq Print") ]]

  vim.keymap.set("n", "<A-c>", "<Plug>CoqStop")
end
