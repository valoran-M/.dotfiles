vim.keymap.set("n", "<down>", "<Plug>CoqNext")
vim.keymap.set("n", "<up>",   "<Plug>CoqUndo")

vim.keymap.set("n", "<A-n>", "<Plug>CoqNext<Plug>CoqJumpToEnd")
vim.keymap.set("n", "<A-N>", "<Plug>CoqUndo<Plug>CoqJumpToEnd")
vim.keymap.set("n", "<A-,>", "<Plug>CoqToLine")
vim.keymap.set("n", "K",     "<Plug>CoqCheck")

vim.keymap.set("n", "<A-c>", "<Plug>CoqStop")
vim.keymap.set("n", "<A-r>", "<Plug>CoqStop<Plug>CoqToLine")

