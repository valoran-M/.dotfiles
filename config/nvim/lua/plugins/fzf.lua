return {
  "junegunn/fzf.vim",
  dependencies = { "junegunn/fzf" },
  lazy = false,

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

