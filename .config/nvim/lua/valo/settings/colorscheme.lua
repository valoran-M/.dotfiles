local colorscheme = "gruvbox"

vim.cmd.colorscheme(colorscheme)

function select_background()
  if os.getenv("THEME") == "light" then
    vim.cmd [[ set background=light ]]
  else
    vim.cmd [[ set background=light ]]
  end
end

--[[ vim.opt.verbose=9 ]]
vim.cmd [[ autocmd Signal SIGUSR1 lua select_background() ]]

