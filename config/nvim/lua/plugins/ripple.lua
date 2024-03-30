return {
  "urbainvaes/vim-ripple",
  config = function()
    vim.g.ripple_repls = {
      python = {
        command = "ipython --no-autoindent",
        addcr   = 1
      },
      ocaml = {
        command = "ocaml",
        pre     = "",
        post    = ";;",
        addcr   = 0
      }
    }
  end
}
