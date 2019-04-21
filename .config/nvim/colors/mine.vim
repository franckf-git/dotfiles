" Vim color file
hi clear
set background=dark

if exists("syntax_on")
  syntax reset
endif

"hi Normal          ctermfg=white ctermbg=black

hi TabLine         ctermfg=253 ctermbg=238 cterm=none
hi TabLineFill     ctermfg=238 ctermbg=253
hi TabLineSel      ctermfg=238 ctermbg=253 cterm=none

hi CursorLine                              cterm=bold
hi CursorLineNr    ctermfg=238 ctermbg=253
hi LineNr          ctermfg=253 ctermbg=238

hi StatusLine      ctermfg=238 ctermbg=253
hi ModeMsg         ctermfg=white ctermbg=darkred

" molokai colorscheme

hi Boolean         ctermfg=135
hi Character       ctermfg=144
hi ColorColumn                 ctermbg=236
hi Comment         ctermfg=59
hi Conditional     ctermfg=161               cterm=bold
hi Constant        ctermfg=135               cterm=bold
hi Cursor          ctermfg=16  ctermbg=253
hi CursorColumn                ctermbg=236
hi Debug           ctermfg=225               cterm=bold
hi Define          ctermfg=81
hi Delimiter       ctermfg=241
hi DiffAdd                     ctermbg=24
hi DiffChange      ctermfg=181 ctermbg=239
hi DiffDelete      ctermfg=162 ctermbg=53
hi DiffText                    ctermbg=102 cterm=bold
hi Directory       ctermfg=118               cterm=bold
hi Error           ctermfg=219 ctermbg=89
hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
hi Exception       ctermfg=118               cterm=bold
hi Float           ctermfg=135
hi FoldColumn      ctermfg=67  ctermbg=16
hi Folded          ctermfg=67  ctermbg=16
hi Function        ctermfg=118
hi Identifier      ctermfg=208               cterm=none
hi Ignore          ctermfg=244 ctermbg=232
hi IncSearch       ctermfg=193 ctermbg=16
hi keyword         ctermfg=161               cterm=bold
hi Label           ctermfg=229               cterm=none
hi Macro           ctermfg=193
hi MatchParen      ctermfg=233  ctermbg=208 cterm=bold
hi MoreMsg         ctermfg=229
hi NonText         ctermfg=59
hi Number          ctermfg=135
hi Operator        ctermfg=161
hi Pmenu           ctermfg=81  ctermbg=16
hi PmenuSbar                   ctermbg=232
hi PmenuSel        ctermfg=255 ctermbg=242
hi PmenuThumb      ctermfg=81
hi PreCondit       ctermfg=118               cterm=bold
hi PreProc         ctermfg=118
hi Question        ctermfg=81
hi Repeat          ctermfg=161               cterm=bold
hi Search          ctermfg=0   ctermbg=222   cterm=NONE
hi SignColumn      ctermfg=118 ctermbg=235
hi Special         ctermfg=81
hi SpecialChar     ctermfg=161               cterm=bold
hi SpecialComment  ctermfg=245               cterm=bold
hi SpecialKey      ctermfg=59
hi SpecialKey      ctermfg=81
hi Statement       ctermfg=161               cterm=bold
hi StatusLineNC    ctermfg=244 ctermbg=232
hi StorageClass    ctermfg=208
hi String          ctermfg=144
hi Structure       ctermfg=81
hi Tag             ctermfg=161
hi Title           ctermfg=166
hi Todo            ctermfg=231 ctermbg=232   cterm=bold
hi Type            ctermfg=81                cterm=none
hi Typedef         ctermfg=81
hi Underlined      ctermfg=244               cterm=underline
hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
hi Visual                      ctermbg=235
hi VisualNOS                   ctermbg=238
hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
hi WildMenu        ctermfg=81  ctermbg=16
