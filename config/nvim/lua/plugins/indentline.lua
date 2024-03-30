return {
  "lukas-reineke/indent-blankline.nvim",
  config = function(_, opts) require('ibl').setup(opts) end,
  opts = {
    indent = { highlight = "Whitespace" },
    whitespace = {
        highlight = "Whitespace",
        remove_blankline_trail = false,
    },
    scope = { enabled = false },
  }
}
