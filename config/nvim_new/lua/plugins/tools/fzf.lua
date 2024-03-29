return {
  "junegunn/fzf.vim",
  dependencies = { "junegunn/fzf" },
  lazy = false,
  keys = {
    {"<leader>f", "<cmd>Files<cr>",    desc = "[F]iles"    },
    {"<leader>g", "<cmd>GFiles<cr>",   desc = "[G]it files"},
    {"<leader>b", "<cmd>Buffers<cr>",  desc = "[B]uffer"   },
    {"<leader>h", "<cmd>Helptags<cr>", desc = "[H]elp tags"},
    {"<leader>r", "<cmd>Rg<cr>",       desc = "[R]ipgrep"  },
    {"<leader>w", "<cmd>Windows<cr>",  desc = "[W]indows"  },
    {"<leader>m", "<cmd>Marks<cr>",    desc = "[M]arks"    },
  },
  config = function()
    vim.g.fzf_colors = {
      fg=      {'fg', 'Normal'     },
      bg=      {'bg', 'Normal'     },
      hl=      {'fg', 'Comment'    },
      info=    {'fg', 'PreProc'    },
      border=  {'fg', 'Ignore'     },
      prompt=  {'fg', 'Conditional'},
      pointer= {'fg', 'Exception'  },
      marker=  {'fg', 'Keyword'    },
      spinner= {'fg', 'Label'      },
      header=  {'fg', 'Comment'    } }

    vim.g.fzf_colors['fg+'] = {'fg', 'CursorLine', 'CursorColumn', 'Normal'}
    vim.g.fzf_colors['bg+'] = {'bg', 'CursorLine', 'CursorColumn'}
    vim.g.fzf_colors['hg+'] = {'fg', 'Statement'}
  end
}

