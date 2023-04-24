local M = {}

local function lsp_highlight_document(client)
	-- Set autocomands conditional on server_capabilities
	if client.server_capabilities.document_highlight then
		vim.api.nvim_exec(
		[[
		augroup lsp_document_highlight
			autocmd! * <buffer>
			autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
			autocmd CursorMoved <buffer> lua vim.lsp.buf_clear_references()
		augroup END
		]],
		false
		)
	end

  -- code lens 
  if client.server_capabilities.code_lens then
      local codelens = vim.api.nvim_create_augroup(
          'LSPCodeLens',
          { clear = true }
      )
      vim.api.nvim_create_autocmd({ 'BufEnter', 'InsertLeave', 'CursorHold' }, {
          group = codelens,
          callback = function()
              vim.lsp.codelens.refresh()
          end,
          buffer = bufnr,
      })
  end
end


local function lsp_keymaps(bufnr)
	local opts = { noremap = true, silent = true }
	local keymap = vim.api.nvim_buf_set_keypmap
	vim.api.nvim_buf_set_keymap(bufnr, "n", "qD",    "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "qd",    "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "K",     "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "qi",    "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
	
	vim.api.nvim_buf_set_keymap(bufnr, "n", "qr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "[d", '<cmd>lua vim.lsp.goto_prev({ border = "rounded" }=<CR>', opts)
	
  vim.cmd("highlight NormalFloat guibg=bg")
  vim.cmd("highlight FloatBorder guifg=white guibg=bg")
  vim.api.nvim_buf_set_keymap(bufnr, "n", "qn", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "qN", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "ql", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)

end

M.on_attach = function(client, bufnr)
	lsp_keymaps(bufnr)
  lsp_highlight_document(client)
end

cmp_nvim_lsp = require("cmp_nvim_lsp")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
        'documentation',
        'detail',
        'additionalTextEdits',
    },
}

M.capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

return M
