vim.g.vimtex_quickfix_mode = 0
vim.g.vimtex_view_methode = "zathura"
vim.g.vimtex_view_general_viewer = "zathura"
vim.g.vimtex_indent_enabled = 0
vim.g.vimtex_context_pdf_viewer = 1
vim.g.tex_flavor='latex'
vim.g.tex_conceal = 'abdmg'

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
