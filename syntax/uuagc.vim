" Vim syntax file
" Language:        uuagc
" Maintainer:      Tom Harper
" Latest Revision: 19 August 2011

if exists ("b:current_syntax")
        finish
endif

" Keywords

syn keyword declKeywords DATA ATTR SEM TYPE
syn keyword controlKeywords INCLUDE nextgroup=string

syn match stringLit '\"[^\"]*\"'
syn match attribute '@[a-z][a-zA-Z\'\.]*' 
" TODO: are variables allowed to contain @'s after the first one?

let b:current_syntax = "uuagc"

hi def link declKeywords Statement
hi def link controlKeywords Statement
hi def link stringLit String
hi def link attribute Identifier
