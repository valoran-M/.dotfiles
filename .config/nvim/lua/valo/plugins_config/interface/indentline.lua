local indent_blankline = require("indent_blankline")

vim.g.indentLine_enabled = 1
vim.g.indent_blankline_show_trailing_blankline_indent = true
vim.g.indent_blankline_show_first_indent_level = true
vim.g.indent_blankline_use_treesitter = true
vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_context_patterns = {
	"class",
	"return",
	"function",
	"method",
	"^while",
	"jsx_element",
  "^mach",
	"^object",
	"^table",
	"block",
	"arguments",
	"if_statement",
	"else_clause",
	"jsx_element",
	"jsx_self_closing_element",
	"try_statement",
	"catch_clause",
	"import_statement",
	"operation_type",
}

vim.g.indent_blankline_char = "▏"

-- HACK: work-around for https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
vim.wo.colorcolumn = "99999"

vim.cmd [[
  highlight IndentBlanklineIndent1 guifg=#2E3442 gui=nocombine
]] 

indent_blankline.setup({
  space_char_blankline = " ",
  char_highlight_list = {
        "IndentBlanklineIndent1",
    },
    space_char_highlight_list = {
        "IndentBlanklineIndent1",
    },
  show_current_context = true,
  show_current_context_start = true,
})
