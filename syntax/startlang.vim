" Fichier de syntaxe pour Startlang

" --- Comments ---
syn region startlangComment start="(\*" end="\*)" keepend

" --- Identifiers ---
syn match startlangIdentifier "\v<[a-zA-Z_]\w*'*\>"

" --- Numbers ---
syn match startlangNumberDec "\v\<\d\%((\d|_)*\d)?\>"
syn match startlangNumberHex "\v0[xX][0-9A-Fa-f]\%(([0-9A-Fa-f]|_)*[0-9A-Fa-f])?"
syn match startlangNumberOct "\v0[oO][0-7]\%(([0-7]|_)*[0-7])?"
syn match startlangNumberBit "\v0[bB][01]\%(([01]|_)*[01])?"

" --- Characters ---
syn match startlangCharacter "'\%(\\.\|[^']\)'"

" --- Operators ---
syn match startlangOperatorColon ":"
syn match startlangOperatorEqDef ":="
syn match startlangOperatorDot "\."

" --- Keywords (commands) ---
syn keyword startlangKeywordDef Definition Def

syn keyword startlangKeywordType Type Ty

syn keyword startlangKeywordEval Eval
syn match startlangKeywordOpEval '\<\$>'

syn keyword startlangKeywordTypeOf TypeOf
syn match startlangKeywordOpTypeOf "\<\?:\>"

syn keyword startlangKeywordHelp Help
syn match startlangKeywordOpHelp "\<\?\>"

syn keyword startlangKeywordFlag Set Unset

" --- Highlight Links ---
hi def link startlangComment Comment
hi def link startlangIdentifier Identifier
hi def link startlangNumberDec Number
hi def link startlangNumberHex Number
hi def link startlangNumberOct Number
hi def link startlangNumberBit Number
hi def link startlangCharacter Character

hi def link startlangKeywordDef Keyword
hi def link startlangKeywordType Keyword
hi def link startlangKeywordEval Keyword
hi def link startlangKeywordOpEval Keyword
hi def link startlangKeywordFlag Keyword
hi def link startlangKeywordTypeOf Keyword
hi def link startlangKeywordOpTypeOf Keyword
hi def link startlangKeywordHelp Keyword
hi def link startlangKeywordOpHelp Keyword

hi def link startlangOperatorDot Operator
hi def link startlangOperatorEqDef Operator
hi def link startlangOperatorColon Operator
hi def link startlangType Type


let b:current_syntax = "startlang"
