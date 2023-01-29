vim.opt.rtp:append(vim.fn.system {'opam', 'var', 'share'}:gsub("\n", "") .. "/merlin/vim")

return {
    cmd = {"opam", "config", "exec", "--", "ocamllsp", "--fallback-read-dot-merlin" },
}
