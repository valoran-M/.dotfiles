local cmp     = require("cmp")
local luasnip = require "luasnip"

require "luasnip/loaders/from_vscode".lazy_load()

local kind_icons = {
  Text = "󰊄",
  Method = "m",
  Function = "󰊕 ",
  Constructor = " ",
  Field = "",
  Variable = "󰆧 ",
  Class = "󰌗 ",
  Interface = " ",
  Module = " ",
  Property = " ",
  Unit = " ",
  Value = "󰎠 ",
  Enum = " ",
  Keyword = " ",
  Snippet = " ",
  Color = "",
  File = " ",
  Reference = " ",
  Folder = " ",
  EnumMember = " ",
  Constant = "󰇽 ",
  Struct = " ",
  Event = "",
  Operator = "󰆕 ",
  TypeParameter = "󰊄",
}

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },

  mapping = {
    ["<C-k>"]     = cmp.mapping.select_prev_item(),
    ["<C-j>"]     = cmp.mapping.select_next_item(),
    ["<C-b>"]     = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
    ["<C-f>"]     = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<C-y>"]     = cmp.config.disable,
    ["<CR>"]      = cmp.mapping.confirm { select = true },
    ["<C-e>"]     = cmp.mapping {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    },
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
  },
  formatting = {
    format = function(entry, vim_item)
      vim_item.kind = string.format("%s", kind_icons[vim_item.kind])

      vim_item.menu = ({
        buffer        = "[Buffer]",
        latex_symbols = "[Text]",
        path          = "[Path]",
      })[entry.source.name]
      return vim_item
    end,
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "nvim_lua" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "latex_symbols" },
    { name = "path" },
  },
  confirm_opts = {
    behavior = cmp.ConfirmBehavior.Replace,
    select = false,
  },
  window = {
    documentation = cmp.config.window.bordered(),
  },
  experimental = {
    ghost_text = false,
    native_menu = false,
  },
}

