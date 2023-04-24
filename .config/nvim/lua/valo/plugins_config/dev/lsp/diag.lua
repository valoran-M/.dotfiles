-- Diagnostic symbols in the sign column (gutter)
local signs = { 
    Error = " ", 
    Warn  = " ", 
    Info  = " ",
    Hint  = " " 
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.cmd [[
  highlight! DiagnosticSignError guibg=bg guifg=#FF0000 gui=bold
  highlight! DiagnosticSignWarn  guibg=bg guifg=#FFA500 gui=bold
  highlight! DiagnosticSignInfo  guibg=bg guifg=#00FFFF gui=bold
  highlight! DiagnosticSignHint  guibg=bg guifg=#0000FF gui=bold
]]

vim.diagnostic.config {
		virtual_text = false,
		signs = {
			active = signs,
		},
		update_in_insert = true,
		underline = true,
		severity_sort = true,
		float = {
			focusable = false,
			style = "minimal",
			border = "rounded",
			source = "always",
			header = "",
			prefix = "",
		},
	}

