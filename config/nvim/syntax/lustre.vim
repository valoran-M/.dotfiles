syn clear

syn match lusStatement "=\|;"
syn match default '[a-zA-Z_][a-zA-Z0-9_]*'
syn keyword Type int real bool
syn keyword Control if else then with
syn keyword Node node fun const let var returns
syn keyword Node automaton state switch end reset every
syn keyword Control do until unless continue last
syn match   Node "tel."
syn match   Node "tel"
syn keyword Node type const include
syn keyword Commands assert
syn keyword Commands pre fby current merge when and or not xor mod default
syn match   Commands "->"
syn match   Commands "initially"
syn keyword Constant true false
syn match   Constant "[-]\d*[\.]\d"
syn match   Constant "\d*[\.]\d*"

syn region Comment start="--" end="$"
syn region Comment start="(\*" end="\*)" excludenl
syn region Comment start="/\*" end="\*/" excludenl

hi def link lusStatement Statement
hi link Node Statement
hi link Commands keyword
hi link Control Conditional 

