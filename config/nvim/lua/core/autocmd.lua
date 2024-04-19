local options_group = vim.api.nvim_create_augroup("OptionsGroup", {clear = true})

vim.api.nvim_create_autocmd({"QuickFixCmdPost"},
  { pattern = "*",
    command = "botright copen 8",
    group = options_group, })
