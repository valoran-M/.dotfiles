local util = require "formatter.util"

require("formatter").setup {
  logging = true,
  log_level = vim.log.levels.WARN,
  filetype = {
    c = {
      function()
        return {
          exe = "clang-format",
          args = {
            "-style='{BasedOnStyle: LLVM, ColumnLimit: 80}'",
            util.escape_path(util.get_current_buffer_file_path()),
          },
          try_node_modules = true,
          stdin = true,
        }
      end
    },
    cpp = {
      function()
        return {
          exe = "clang-format",
          args = {
            "-style='{BasedOnStyle: LLVM, ColumnLimit: 80}'",
            util.escape_path(util.get_current_buffer_file_path()),
          },
          try_node_modules = true,
          stdin = true,
        }
      end
    },
    ocaml = {
      function()
        return {
          exe = "ocamlformat",
          args = {
            "--enable-outside-detected-project",
            "--break-cases=fit-or-vertical",
            "--cases-exp-indent=4",
            "--if-then-else=k-r",
            "--type-decl-indent=4",
            "--type-decl=sparse",
            util.escape_path(util.get_current_buffer_file_path()),
          },
          stdin = true,
        }
      end
    },
    python = {
      function()
        return {
          exe = "black",
          args = {
            "-q",
            "-",
          },
          stdin = true,
        }
      end
    },
    rust = {
      function()
        return {
          exe = "rustfmt"
        }
      end
    }
  }
}
