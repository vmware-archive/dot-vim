"
" SummerFruit Color Scheme
" ========================
"
" Author:   Armin Ronacher <armin.ronacher@active-4.com>
" Version:  0.1
"
set background=light

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "summerfruit"

" Global
hi Normal       guifg=#000000   guibg=#ffffff
hi NonText      guifg=#b7dce8   gui=none
hi SpecialKey   guifg=#438ec3   guibg=#b7dce8

" Search
hi Search       guifg=#800000   guibg=#ffae00
hi IncSearch    guifg=#800000   guibg=#ffae00

" Interface Elements
hi StatusLine   guifg=#ffffff   guibg=#43c464   gui=NONE
hi StatusLineNC guifg=#9bd4a9   guibg=#51b069
hi VertSplit    guifg=#3687a2   guibg=#3687a2
hi Folded       guifg=#3c78a2   guibg=#c3daea
hi IncSearch    guifg=#708090   guibg=#f0e68c
hi Pmenu        guifg=#ffffff   guibg=#cb2f27
hi SignColumn   guibg=#1b5c8a
hi CursorLine   guibg=#eff2f4   ctermbg=15      cterm=none
hi LineNr       guifg=#eeeeee   guibg=#438ec3   gui=NONE  ctermfg=15   ctermbg=4   cterm=NONE
hi MatchParen   guibg=#cddae5

" Specials
hi Todo         guifg=#e50808   guibg=#dbf3cd   gui=NONE
hi Title        guifg=#000000   gui=NONE
hi Special      guifg=#fd8900

" Syntax Elements
"hi String       guifg=#0086d2   ctermfg=6
hi String       guifg=#fd8900   ctermfg=6
hi Constant     guifg=#0086d2   ctermfg=6
hi Number       guifg=#0086f7                   gui=NONE     ctermfg=14   cterm=NONE
hi Statement    guifg=#fb660a                   gui=NONE     ctermfg=3    cterm=NONE
hi Function     guifg=#ff0086                   gui=NONE     ctermfg=5    cterm=NONE
hi PreProc      guifg=#ff0007                   gui=NONE     ctermfg=9    cterm=NONE
hi Comment      guifg=#22a21f   guibg=#dbf3cd   gui=NONE""   ctermfg=2    cterm=underline
hi Type         guifg=#70796b                   gui=NONE     ctermfg=8    cterm=NONE
hi Error        guifg=#d40000   guibg=#f3cddb   gui=NONE     ctermfg=7    ctermbg=1
hi Identifier   guifg=#ff0086                   gui=NONE     ctermfg=5    cterm=NONE
hi Label        guifg=#ff0086   ctermfg=5       cterm=NONE

" Python Highlighting
hi pythonCoding     guifg=#ff0086
hi pythonRun        guifg=#ff0086
hi pythonBuiltinObj     guifg=#2b6ba2           gui=NONE
hi pythonBuiltinFunc    guifg=#2b6ba2           gui=NONE
hi pythonException      guifg=#ee0000           gui=NONE
hi pythonExClass        guifg=#66cd66           gui=NONE
hi pythonSpaceError     guibg=#f8e6e6
hi pythonDocTest    guifg=#2f5f49
hi pythonDocTest2   guifg=#3b916a
hi pythonFunction   guifg=#ee0000               gui=NONE
hi pythonClass      guifg=#ff0086               gui=NONE

" HTML Highlighting
hi htmlTag              guifg=#00bdec           gui=NONE
hi htmlEndTag           guifg=#00bdec           gui=NONE
hi htmlSpecialTagName   guifg=#4aa04a
hi htmlTagName          guifg=#4aa04a
hi htmlTagN             guifg=#4aa04a

" Jinja Highlighting
hi jinjaTagBlock    guifg=#ff0007   guibg=#fbf4c7   gui=NONE
hi jinjaVarBlock    guifg=#ff0007   guibg=#fbf4c7
hi jinjaString      guifg=#0086d2   guibg=#fbf4c7
hi jinjaNumber      guifg=#bf0945   guibg=#fbf4c7   gui=NONE
hi jinjaStatement   guifg=#fb660a   guibg=#fbf4c7   gui=NONE
hi jinjaComment     guifg=#008800   guibg=#002300   gui=NONE""
hi jinjaFilter      guifg=#ff0086   guibg=#fbf4c7
hi jinjaRaw         guifg=#aaaaaa   guibg=#fbf4c7
hi jinjaOperator    guifg=#ffffff   guibg=#fbf4c7
hi jinjaVariable    guifg=#92cd35   guibg=#fbf4c7
hi jinjaAttribute   guifg=#dd7700   guibg=#fbf4c7
hi jinjaSpecial     guifg=#008ffd   guibg=#fbf4c7

hi atomyParticle      guifg=#0086d2   ctermfg=6
