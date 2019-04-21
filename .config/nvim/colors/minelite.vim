" Vim color file
hi clear
set background=dark

if exists("syntax_on")
  syntax reset
endif

hi Normal                                                                        ctermbg=darkgray

hi Comment        term=bold          cterm=italic           ctermfg=lightgrey

hi CursorLine     term=bold          cterm=none
hi CursorLineNr   term=bold          cterm=none             ctermfg=black        ctermbg=lightblue

hi Directory      term=bold          cterm=none             ctermfg=blue

hi LineNr         term=underline     cterm=bold             ctermfg=lightblue

hi MatchParen     term=reverse                              ctermfg=darkred
hi Search         term=reverse                              ctermfg=white        ctermbg=darkred

hi Special        term=bold          cterm=bold             ctermfg=darkred      ctermbg=black
hi Visual         term=reverse       cterm=reverse

hi StatusLine     term=bold,reverse  cterm=bold             ctermfg=lightblue
hi StatusLineNC   term=reverse                              ctermfg=white        ctermbg=lightblue

hi TabLine        term=bold,reverse  cterm=italic           ctermfg=lightblue
hi TabLineFill    term=bold,reverse  cterm=italic
hi TabLineSel     term=reverse                              ctermfg=white        ctermbg=lightgrey

hi ErrorMsg       term=standout      cterm=bold             ctermfg=white        ctermbg=darkred
hi WarningMsg     term=standout      cterm=bold             ctermfg=darkred

hi ModeMsg        term=bold          cterm=bold                                  ctermbg=darkred
