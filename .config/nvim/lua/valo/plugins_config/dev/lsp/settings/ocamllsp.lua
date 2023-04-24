local lsp = require("lspconfig")

vim.opt.rtp:append(vim.fn.system {'opam', 'var', 'share'}:gsub("\n", "") .. "/merlin/vim")

return {
  root_dir = function(fname)
    return
    lsp.util.find_git_ancestor(fname)
    or vim.loop.os_homedir()
    or lsp.util.root_pattern("*.opam", ".git", "dune-project")
  end,
  cmd = {"opam", "config", "exec", "--", "ocamllsp", "--fallback-read-dot-merlin" },
}
