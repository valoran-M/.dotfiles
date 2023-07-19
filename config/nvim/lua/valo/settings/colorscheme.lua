local colorscheme = "gruvbox"

vim.cmd.colorscheme(colorscheme)

local function select_background()
  if os.getenv("THEME") == "light" then
    vim.cmd [[ set background=light ]]
  else
    vim.cmd [[ set background=dark ]]
  end
end
select_background()

-- change theme
local function reload()
  vim.cmd [[ doautocmd OptionSet background ]]
  vim.cmd [[ doautocmd ColorScheme * ]]
end

function light()
  vim.cmd [[ set background=light ]]
  reload()
end
function dark()
    vim.cmd [[ set background=dark ]]
    reload()
end

--[[ vim.opt.verbose=9 ]]
vim.cmd [[ autocmd Signal SIGUSR1 lua light() ]]
vim.cmd [[ autocmd Signal SIGWINCH lua dark() ]]

