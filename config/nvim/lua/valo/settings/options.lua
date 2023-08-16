local options = {
  autoindent	  = true,
  clipboard     = "unnamedplus", -- allow nvim to access to system clipboard
  completeopt   = { "menuone", "noselect" },
  cursorline    = true,
  conceallevel  = 0,        -- so that `` is visible in markdown files
  fileencoding  = "utf-8",  -- the encoding written to a file
  foldmethod    = "manual", -- folding, set to "expr" for treesitter based folding
  foldexpr      = "",       -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
  guifont       = "monospace:h17", -- the font used in graphical neovim applications
  hidden        = true,   -- required to keep multiple buffers and open multiple buffers
  hlsearch      = true,   -- highlight all matches on previous search pattern
  ignorecase    = true,   -- ignore case in search patterns
  mouse         = "",    -- allow the mouse to be used in neovim
  pumheight     = 10,     -- pop up menu height
  showmode      = false,  -- we don't need to see things like -- INSERT -- anymore
  showtabline   = 2,      -- always show tabs
  signcolumn    = "yes:1",
  smartcase     = true,   -- smart case
  splitbelow    = true,   -- force all horizontal splits to go below current window
  splitright    = true,   -- force all vertical splits to go to the right of current window
  swapfile      = false,  -- creates a swapfile
  termguicolors = true,   -- set term gui colors (most terminals support this)
  timeoutlen    = 1000,   -- time to wait for a mapped sequence to complete (in milliseconds)
  title         = false,  -- set the title of window to the value of the titlestring
  updatetime    = 100,    -- faster completion
  writebackup   = false,  -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab     = true,   -- convert tabs to spaces
  shiftwidth    = 2,      -- the number of spaces inserted for each indentation
  tabstop       = 2,      -- insert 2 spaces for a tab
  number        = true,   -- set numbered lines
  numberwidth   = 2,      -- set number column width to 2 {default 4}
  wrap          = false,  -- display lines as one long line
  scrolloff     = 8,      -- minimal number of screen lines to keep above and below the cursor.
  sidescrolloff = 8,      -- minimal number of screen lines to keep left and right of the cursor.
  showcmd       = true,
  smartindent   = true,
  ruler         = false,
  laststatus    = 3,
  whichwrap     = "bs<>[]",
  wrapmargin    = 0,
  textwidth     = 80,
  colorcolumn   = "+1",
  relativenumber= true,
  modifiable    = true,
  history       = 1000,
  spelllang     = "fr",
  list          = true,
}

vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

vim.wo.winfixwidth = true
vim.wo.linebreak = true
vim.wo.number = true
vim.wo.list = false

for k, v in pairs(options) do
  vim.opt[k] = v
end
