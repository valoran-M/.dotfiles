local colorscheme = "gruvbox"

vim.cmd.colorscheme(colorscheme)

local function select_background()
  vim.g.autocmd = os.getenv("THEME")
end
select_background()

-- change theme
local function reload()
  vim.cmd [[ doautocmd OptionSet background ]]
  vim.cmd [[ doautocmd ColorScheme * ]]
end

local group = vim.api.nvim_create_augroup("background", { clear = true })

vim.api.nvim_create_autocmd("Signal", {
  group    = group,
  pattern  = "SIGUSR1",
  callback = function ()
    vim.cmd [[ set background=light ]]
    reload()
  end,
})

vim.api.nvim_create_autocmd("Signal", {
  group    = group,
  pattern  = "SIGWINCH",
  callback = function ()
    vim.cmd [[ set background=dark ]]
    reload()
  end
})

