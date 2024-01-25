vim.g.tex_flavor = "latex"
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_view_enable = 1
vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_compiler_engine = "lualatex"

vim.g.vimtex_compiler_latexmk = {
    engine = "lualatex",
      options = {
       "-shell-escape",
        "-verbose",
        "-file-line-error",
        "-synctex=1",
        "-interaction=nonstopmode"
  }
}

