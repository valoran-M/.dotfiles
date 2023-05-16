
function select_background()
  if os.getenv("THEME") == "light" then
    vim.cmd [[ set background=light ]]
  else
    vim.cmd [[ set background=dark ]]
  end
end

vim.cmd [[ autocmd! Signal SIGUSR1 lua select_background() ]]

require "valo.plugins"
require "valo.settings"
require "valo.plugins_config"
