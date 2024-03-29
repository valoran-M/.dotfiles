local function spaces ()
  return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end

local diagnostics = {
  "diagnostics",
  sources  = { "nvim_diagnostic" },
  sections = { "error", "warn" },
  symbols  = { error = " ", warn = " " },
  colored  = true,
  update_in_insert = false,
  always_visible   = false,
}

local branch = {
  "branch",
  icons_enabled = true,
  icon = "",
}

return {
  "nvim-lualine/lualine.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      icons_enabled = false,
      component_separators = { left = "", right = "" },
      section_separators   = { left = "", right = "" },
      disabled_filetypes   = { "dashboard", "NvimTree", "alpha", "Outline" },
      always_divide_middle = true,
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "buffers" },
      lualine_c = { branch, diagnostics },

      lualine_x = { spaces, "encoding", "filetype" },
      lualine_y = { "location" },
      lualine_z = { "progress" },
    },
  }
}
