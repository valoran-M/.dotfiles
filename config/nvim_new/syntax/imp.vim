syn clear

syn keyword impKeyword putchar if else while var function return
syn keyword impBool true false
syn match impNumber "\<[0-9]\+\>"
syn region impComment start="(\*"  end="\*)"

if !exists("did_imp_syntax_init")
  let did_imp_syntax_init = 1
  hi link impBool     Constant
  hi link impKeyword  Statement
  hi link impNumber   Number
  hi link impComment  Comment
endif
