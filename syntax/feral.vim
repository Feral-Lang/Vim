" Vim syntax file
" Language: Feral
" Maintainer: Electrux
" Latest Revision: 28 Nov. 2025

if exists("b:current_syntax")
    finish
endif

" Keywords
syn keyword keywords fn if elif else for in while return continue break or defer let inline
syn keyword selfkeyword self
syn keyword nil nil
syn keyword booleans true false

" Types
syn match types '\w\+Ty\b'

" Assignments - contains is added to give Types a higher priority
syn match assigns '\zs\w\+\ze =[^=]' contains=types

" Functions
syn match functions '\zs\w\+\ze('

" Strings
syn region strings start="'" end="'"
syn region strings start='"' end='"'

" Numbers
syn match numbers '\d\+'
syn match numbers '[-+]\d\+'
" Floating point number with decimal no E or e 
syn match numbers '\d\+\.\d*'
syn match numbers '[-+]\d\+\.\d*'

" Block
syn region blocks start='{' end='}' fold transparent

" Comments
syn match comments '#.*$' contains=todos

" Todo
syn keyword todos contained TODO FIXME NOTE

hi def link keywords	Statement
hi def link selfkeyword	StorageClass
hi def link nil		Boolean
hi def link types	StorageClass
hi def link assigns	Underlined
hi def link functions	Function
hi def link booleans	Boolean
hi def link strings	Character
hi def link numbers	Number
hi def link blocks	Normal
hi def link comments	Comment
hi def link todos	Todo

let b:current_syntax = "feral"
