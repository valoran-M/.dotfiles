local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Down>",   ":resize +2<CR>", opts)
keymap("n", "<C-Up>",     ":resize -2<CR>", opts)
keymap("n", "<C-Right>",  ":vertical resize -2<CR>", opts)
keymap("n", "<C-Left>",   ":vertical resize +2<CR>", opts)

--buffer
keymap("n", "<A-h>", ":bprevious<CR>", opts)
keymap("n", "<A-l>", ":bnext<CR>", opts)
-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==", opts)

keymap("n", "<e>", "<cmd>cnext<CR>zz", opts)
keymap("n", "<E>", "<cmd>cprev<CR>zz", opts)

keymap("n", "²", ":set invrelativenumber<CR>", opts)

keymap("n", "(", "(zz", opts)
keymap("n", ")", ")zz", opts)
keymap("n", "{", "{zz", opts)
keymap("n", "}", "}zz", opts)

keymap("n", "<esc><esc>", "<cmd>nohlsearch<CR>", { desc = "[esc] hlsearch" })

-- Insert --
keymap("i", "jk", "<esc>", opts)
-- save with Ctrl+s
keymap("i", "<C-s>", "<ESC>:w<CR>a", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
-- Visual --
keymap("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "" })
keymap("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "" })

keymap("n", "<right>", "xp", { desc = "move char [right]" })
keymap("n", "<left>", "hxph", { desc = "move char [left]" })

