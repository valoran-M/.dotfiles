local servers = {
  --[[ "sumneko_lua", ]]
	"ocamllsp",
	"clangd",
	"texlab",
  	"pyright",
  	"ltex",
  	"rust_analyzer"
}

lspconfig = require "lspconfig"

for _, server in pairs(servers) do
	opts = {
		on_attach = require("valo.plugins_config.dev.lsp.handlers").on_attach,
		capabilities = require("valo.plugins_config.dev.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

	confopts = require("valo.plugins_config.dev.lsp.settings." .. server)
	
  opts = vim.tbl_deep_extend("force", confopts, opts)

	lspconfig[server].setup(opts)
end

