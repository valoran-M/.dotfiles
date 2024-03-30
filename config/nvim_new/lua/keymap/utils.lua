-- Keymap utils function
-- 
-- inspiration : https://github.com/nvimdev/dope/blob/main/lua/core/keymap.lua

local keymap = {}
local option = {}

function option.default()
  return {
    silent  = false,
    noremap = false,
  }
end

function keymap.new_opt(...)
  local args = { ... }
  local defs = option:default()

  if #args == 0 then return defs end

  for a, o in pairs(args[1]) do
    defs[a] = o
  end

  return defs
end

local function keymap_set(mod, opts)
  local len = #opts
  if len < 2 then
    vim.notify("keymap must has rhs")
    return
  end

  local options = len == 3 and keymap.new_opt(opts[3])
                            or option.default()

  vim.keymap.set(mod, opts[1], opts[2], options)
end

local function map(mod)
  return function(opts)
    vim.validate({
      opts = { opts, "table" },
    })

    if type(opts[1]) == "table" and type(opts[2]) == "table" then
      for _, v in pairs(opts) do
        keymap_set(mod, v)
      end
    else
      keymap_set(mod, opts)
    end
  end
end

-- Modes
--   normal mode  = "n",
--   insert mode  = "i",
--   visual mode  = "v",
--   term mode    = "t",
--   command mode = "c",
--   visual block mode = "x",

keymap.nmap = map("n")
keymap.imap = map("i")
keymap.cmap = map("c")
keymap.vmap = map("v")
keymap.xmap = map("x")
keymap.tmap = map("t")

return keymap

