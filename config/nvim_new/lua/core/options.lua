-- Window option ---------------------------------------------------------------

local opt = vim.opt
opt.autoindent    = true
opt.clipboard     = "unnamedplus"
opt.completeopt   = { "menuone", "noselect" }
opt.cursorline    = true
opt.colorcolumn   = "+1"
opt.conceallevel  = 0
opt.fileencoding  = "utf-8"
opt.foldmethod    = "manual"
opt.foldexpr      = ""
opt.guifont       = "monospace:h17"
opt.hidden        = true
opt.hlsearch      = true
opt.ignorecase    = true
opt.mouse         = ""
opt.pumheight     = 10
opt.showmode      = false
opt.showtabline   = 2
opt.signcolumn    = "yes:1"
opt.smartcase     = true
opt.splitbelow    = true
opt.splitright    = true
opt.swapfile      = false
opt.termguicolors = true
opt.timeoutlen    = 1000
opt.title         = false
opt.updatetime    = 100
opt.writebackup   = false
opt.expandtab     = true
opt.shiftwidth    = 2
opt.tabstop       = 2
opt.number        = true
opt.numberwidth   = 2
opt.wrap          = false
opt.scrolloff     = 8
opt.sidescrolloff = 8
opt.showcmd       = true
opt.smartindent   = true
opt.ruler         = false
opt.laststatus    = 3
opt.whichwrap     = "bs<>[]"
opt.wrapmargin    = 0
opt.textwidth     = 80
opt.relativenumber= true
opt.modifiable    = true
opt.history       = 1000
opt.spelllang     = "fr"
opt.list          = true

local g   = vim.g
g.loaded_ruby_provider = 0
g.loaded_perl_provider = 0
g.jupytext_fmt         = "py"
g.jupytext_style       = "hydrogen"
g.matchup_matchparen_offscreen = { method = "popup" }
g.loaded_ruby_provider = 0
g.loaded_perl_provider = 0
g.loaded_node_provider = 0

local wo = vim.wo
wo.winfixwidth = true
wo.linebreak   = true
wo.number      = true
wo.list        = false

