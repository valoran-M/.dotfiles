local function set_hl(name, opts) vim.api.nvim_set_hl(0, name, opts) end

set_hl("CoqtailSent",     { bg = "#574300" })
set_hl("CoqtailChecked",  { bg = "#30423c" })

vim.keymap.set("n", "<down>", "<Plug>CoqNext")
vim.keymap.set("n", "<up>",   "<Plug>CoqUndo")
vim.keymap.set("n", "s", "<Plug>CoqNext")
vim.keymap.set("n", "S", "<Plug>CoqUndo")
vim.keymap.set("n", "L", "<Plug>CoqToLine")

vim.keymap.set("i", "<A-j>", "<Plug>CoqNext")
vim.keymap.set("i", "<A-k>",   "<Plug>CoqUndo")

vim.g.coqtail_noimap = true
vim.g.coqtail_map_prefix = "<localleader>c"

