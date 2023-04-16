local servers = {
  --[[ "sumneko_lua", ]]
	"ocamllsp",
	"clangd",
	"texlab",
  "pyright",
  "ltex",
}

local settings = {
	ui = {
		border = "none",
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

lspconfig = require "lspconfig"

-- require("grammar-guard").init()

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("valo.plugins.dev.lsp.handlers").on_attach,
		capabilities = require("valo.plugins.dev.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

	confopts = require("valo.plugins.dev.lsp.settings." .. server)
	
  opts = vim.tbl_deep_extend("force", confopts, opts)

	lspconfig[server].setup(opts)
end


