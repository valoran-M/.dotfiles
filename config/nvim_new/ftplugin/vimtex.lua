local g = vim.g

g.tex_flavor = "latex"
g.vimtex_view_method = "zathura"
g.vimtex_view_enable = 1
g.vimtex_compiler_method = "latexmk"
g.vimtex_compiler_engine = "lualatex"

g.vimtex_compiler_latexmk = {
  engine = "lualatex",
  options = {
    "-shell-escape",
     "-verbose",
     "-file-line-error",
     "-synctex=1",
     "-interaction=nonstopmode"
  }
}

