local servers = {
  "lua_ls",
  "ocamllsp",
  "clangd",
  "texlab",
  "pyright",
  "ltex",
  "rust_analyzer",
  "vimls"
}

require("nvim-lsp-installer").setup {}

local lspconfig = require "lspconfig"

local on_attach   = require("valo.plugins_config.dev.lsp.handlers").on_attach
local capabilities = require("valo.plugins_config.dev.lsp.handlers").capabilities

for _, server in pairs(servers) do
	opts = {
		on_attach = on_attach,
		capabilities = capabilities,
	}

	server = vim.split(server, "@")[1]
	confopts = require("valo.plugins_config.dev.lsp.settings." .. server)
  opts = vim.tbl_deep_extend("force", confopts, opts)
	lspconfig[server].setup(opts)
end

--[[ require("coq-lsp").setup ({ ]]
--[[   coq_lsp_nvim = { }, ]]
--[[   lsp = { ]]
--[[     on_attach = on_attach, ]]
--[[     capabilities = capabilities, ]]
--[[     init_options = { ]]
--[[       show_notices_as_diagnostics = true, ]]
--[[     }, ]]
--[[   }, ]]
--[[ }) ]]
