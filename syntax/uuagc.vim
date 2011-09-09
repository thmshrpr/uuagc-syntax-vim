" Vim syntax file
" Language:        uuagc
" Maintainer:      Tom Harper
" Latest Revision: 19 August 2011

if exists ("b:current_syntax")
        finish
endif

syntax sync fromstart

runtime syntax/haskell.vim

let b:current_syntax = "uuagc"

syn keyword attrKeywords loc lhs skip='\.' nextgroup=attribute
syn keyword declKeywords DATA ATTR SEM TYPE MAYBE USE SELF AROUND MERGE WRAPPER
syn match fieldName  '@[a-z][a-zA-Z0-9\']*' 
" TODO: are variables allowed to contain @'s after the first one?

hi def link declKeywords    Statement
hi def link attrKeywords    Statement
hi def link fieldName       Identifier
