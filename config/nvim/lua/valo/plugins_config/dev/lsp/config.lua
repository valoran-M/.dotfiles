local servers = {
  "lua_ls",
  "ocamllsp",
  "clangd",
  "zls",
  "texlab",
  "pyright",
  "rust_analyzer",
  "vimls"
}

require("nvim-lsp-installer").setup {}

local lspconfig = require "lspconfig"

local on_attach   = require("valo.plugins_config.dev.lsp.handlers").on_attach

for _, server in pairs(servers) do
  local opts = {
    on_attach     = on_attach
  }

  server = vim.split(server, "@")[1]

  local require_ok, confopts = pcall(require, "valo.plugins_config.dev.lsp.settings." .. server)
  if require_ok then
    opts = vim.tbl_deep_extend("force", confopts, opts)
  end

  lspconfig[server].setup(opts)

end

