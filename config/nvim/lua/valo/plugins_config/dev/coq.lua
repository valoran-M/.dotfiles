-- Coq

local function set_hl(name, opts) vim.api.nvim_set_hl(0, name, opts) end
set_hl("CoqtailSent",     { bg = "#574300" })
set_hl("CoqtailChecked",  { bg = "#30423c" })

vim.g.coqtail_noimap = true
vim.g.coqtail_map_prefix = "<localleader>c"

vim.cmd('autocmd FileType coq lua KeymapCoq()')
function KeymapCoq()
  vim.keymap.set("i", "<A-Up>",   "<Plug>CoqUndo")
  vim.keymap.set("i", "<A-Down>", "<Plug>CoqNext")
  vim.keymap.set("i", "<A-Right>","<Plug>CoqToLine")

  vim.keymap.set("n", "<A-Down>", "<Plug>CoqNext zz")
  vim.keymap.set("n", "<A-Up>",   "<Plug>CoqUndo zz")
  vim.keymap.set("n", "<A-Right>","<Plug>CoqToLine zz")
  vim.keymap.set("n", "<A-n>", "<Plug>CoqNext <Plug>CoqJumpToEnd")
  vim.keymap.set("n", "<A-N>", "<Plug>CoqUndo <Plug>CoqJumpToEnd")
  vim.keymap.set("n", "<A-,>","<Plug>CoqToLine")
  vim.keymap.set("n", "K", "<Plug>CoqCheck")

  --[[ vim.keymap.set("n", "P", "<Plug>Coq Print") ]]

  vim.keymap.set("n", "<A-c>", "<Plug>CoqStop")
end

-- snippets --------------------------------------------------------------------

local ls = require("luasnip")

local t = ls.text_node
local s = ls.snippet


ls.add_snippets("coq",
  {
    s("\\fun",    {t({"λ"})}),
    s("\\mult",   {t({"⋅"})}),
    s("\\ent",    {t({"⊢"})}),
    s("\\valid",  {t({"✓"})}),
    s("\\diamond",{t({"◇"})}),
    s("\\box",    {t({"□"})}),
    s("\\bbox",   {t({"■"})}),
    s("\\later",  {t({"▷"})}),
    s("\\pred",   {t({"φ"})}),
    s("\\and",    {t({"∧"})}),
    s("\\or",     {t({"∨"})}),
    s("\\comp",   {t({"∘"})}),
    s("\\ccomp",  {t({"◎"})}),
    s("\\all",    {t({"∀"})}),
    s("\\ex",     {t({"∃"})}),
    s("\\to",     {t({"→"})}),
    s("\\sep",    {t({"∗"})}),
    s("\\lc",     {t({"⌜"})}),
    s("\\rc",     {t({"⌝"})}),
    s("\\Lc",     {t({"⎡"})}),
    s("\\Rc",     {t({"⎤"})}),
    s("\\lam",    {t({"λ"})}),
    s("\\empty",  {t({"∅"})}),
    s("\\Lam",    {t({"Λ"})}),
    s("\\Sig",    {t({"Σ"})}),
    s("\\-",      {t({"∖"})}),
    s("\\aa",     {t({"●"})}),
    s("\\af",     {t({"◯"})}),
    s("\\auth",   {t({"●"})}),
    s("\\frag",   {t({"◯"})}),
    s("\\iff",    {t({"↔"})}),
    s("\\gname",  {t({"γ"})}),
    s("\\incl",   {t({"≼"})}),
    s("\\latert", {t({"▶"})}),
    s("\\update", {t({"⇝"})}),
    s("\\\"o",    {t({"ö"})}),
    s("_a",       {t({"ₐ"})}),
    s("_e",       {t({"ₑ"})}),
    s("_h",       {t({"ₕ"})}),
    s("_i",       {t({"ᵢ"})}),
    s("_k",       {t({"ₖ"})}),
    s("_l",       {t({"ₗ"})}),
    s("_m",       {t({"ₘ"})}),
    s("_n",       {t({"ₙ"})}),
    s("_o",       {t({"ₒ"})}),
    s("_p",       {t({"ₚ"})}),
    s("_r",       {t({"ᵣ"})}),
    s("_s",       {t({"ₛ"})}),
    s("_t",       {t({"ₜ"})}),
    s("_u",       {t({"ᵤ"})}),
    s("_v",       {t({"ᵥ"})}),
    s("_x",       {t({"ₓ"})}),
  }
)
