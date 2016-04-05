" Vim color file
" Maintainer:   Freddy Hernandez
" Last Change:  2013 Dec 27
" Dark scheme with subtle comment highlighting.
" Console only

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

"colorscheme default
let g:colors_name = "hououin-8color"

" Console
hi Normal       ctermfg=White

hi Search       ctermfg=Black       ctermbg=Grey
hi StatusLine   ctermfg=Grey        ctermbg=DarkGrey
hi StatusLineNC ctermfg=Black       ctermbg=White
hi LineNr       ctermfg=Grey
hi WarningMsg   ctermfg=DarkRed

hi Comment      ctermfg=DarkGrey
hi Constant     ctermfg=DarkCyan
hi Identifier   ctermfg=Brown
hi Statement    ctermfg=Yellow
hi PreProc      ctermfg=Magenta
hi Type         ctermfg=Blue
hi Special      ctermfg=Grey
hi Underlined   ctermfg=DarkBlue
hi Todo         ctermfg=DarkGreen   ctermbg=NONE
