return  {
  "lewis6991/gitsigns.nvim",
  opts = {
    signs = {
      add          = { hl = "GitSignsAdd",    text = "▎", numhl = "GitSignsAddNr",    linehl = "GitSignsAddLn"    },
      change       = { hl = "GitSignsChange", text = "▎", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
      delete       = { hl = "GitSignsDelete", text = "", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
      topdelete    = { hl = "GitSignsDelete", text = "", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
      changedelete = { hl = "GitSignsChange", text = "▎", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
    },
    signcolumn = true,
    numhl      = false,
    linehl     = false,
    word_diff  = false,

    watch_gitdir = {
      interval     = 1000,
      follow_files = true
    },
    attach_to_untracked = true,
    current_line_blame  = false,
    sign_priority       = 6,
    update_debounce     = 100,
    status_formatter    = nil,
    max_file_length     = 40000,

    preview_config = {
      border    = "single",
      style     = "minimal",
      relative  = "cursor",
      row = 0,
      col = 1,
    },
  },
}
