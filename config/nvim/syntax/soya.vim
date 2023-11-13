" Vim syntax file
" Language: Objlng
" Maintainer: Gurvan <gurvan@debauss.art>
" Last Change: 2023 Oct 15

if exists("b:current_syntax")
  finish
endif

syn clear

syn keyword objlngKeyword putchar var function return instanceof
syn keyword objlngKeywordClass class attribute method extends new this super
syn keyword objlngConditional if else
syn keyword objlngRepeat while
syn keyword objlngBool true false
syn match   objlngNumber "\<[0-9]\+\>"
syn region  objlngComment start="/\*"  end="\*/"
syn keyword objlngType int bool void

hi def link objlngKeyword          Keyword
hi def link objlngKeywordClass     Keyword
hi def link objlngConditional      Conditional
hi def link objlngRepeat           Repeat
hi def link objlngBool             Boolean
hi def link objlngNumber           Number
hi def link objlngComment          Comment
hi def link objlngType             Type

let b:current_syntax = "soya"
