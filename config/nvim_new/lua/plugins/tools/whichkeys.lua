return {
  "folke/which-key.nvim",
  opts = {
    window = {
      border = "single",
      position = "bottom",
      margin = { 0, 0, 0, 0 },
      padding = { 1, 1, 1, 1 },
      winblend = 0,
    },
    icons = {
      breadcrumb = "»",
      separator = "➜",
      group = "+",
    },
  },
  config = function ()
    local which_key=require("which-key")

    local opts = {
      mode = "n", -- NORMAL mode
      prefix = "<leader>",
      buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
      silent = true, -- use `silent` when creating keymaps
      noremap = true, -- use `noremap` when creating keymaps
      nowait = true, -- use `nowait` when creating keymaps
    }

    local mappings = {

    }

    which_key.register(mappings, opts)
  end,
}

