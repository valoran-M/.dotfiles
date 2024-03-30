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

local function on_attach(_, bufnr)
  local nmap = require('keymap.utils').nmap
  local opts = { noremap = true, silent = true, buffer = bufnr }

  nmap({
    { "K",  "<cmd>lua vim.lsp.buf.hover()<CR>",           opts },
    { "qD", "<cmd>lua vim.lsp.buf.declaration()<CR>",     opts },
    { "qd", "<cmd>lua vim.lsp.buf.definition()<CR>",      opts },
    { "qi", "<cmd>lua vim.lsp.buf.implementation()<CR>",  opts },
    { "qr", "<cmd>lua vim.lsp.buf.references()<CR>",      opts },
    { "ql", "<cmd>lua vim.diagnostic.open_float()<CR>",   opts },
    { "qn", "<cmd>lua vim.diagnostic.goto_next()<CR>",    opts },
    { "qN", "<cmd>lua vim.diagnostic.goto_prev()<CR>",    opts },
  })
end

return function ()
  local lspconfig = require('lspconfig')
  for _, server in pairs(servers) do
    local opts = {
      on_attach     = on_attach
    }
    server = vim.split(server, "@")[1]
    local ok, confopts = pcall(require, 'plugins.lsp.settings.' .. server)
    if ok then
      opts = vim.tbl_deep_extend("force", confopts, opts)
    end

    lspconfig[server].setup(opts)
  end
end
