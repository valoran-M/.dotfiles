local function on_attach(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set('n', 'l',    api.node.open.edit,             opts('Open'))
  vim.keymap.set('n', 'v',    api.node.open.vertical,         opts('Open: Vertical Split'))
  vim.keymap.set('n', 'h',    api.node.navigate.parent_close, opts('Close Directory'))
end

return function ()
  require("nvim-tree").setup {
    filesystem_watchers = { enable = true },
    on_attach  = on_attach,
    update_cwd = true,
    git = { enable = false },
    filters = {
      enable      = true,
      git_ignored = true,
    },
    view = {
        side = "left",
        number = false,
        relativenumber = false,
    },
    renderer = {
        root_folder_modifier = ":t",
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
            },
            glyphs = {
                default = "",
                symlink = "",
                folder = {
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                },
            }
        }
    }
  }
end
