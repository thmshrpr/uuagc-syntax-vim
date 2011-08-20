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

let b:current_syntax = "uuagc"

hi def link declKeywords Statement
hi def link controlKeywords Statement
hi def link stringLit String
