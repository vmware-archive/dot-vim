"
" Kaleidoscope Color Scheme
" ========================
"
set background=dark

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "kaleidoscope"

" Global
" done
hi Normal       guifg=#f8f8f8   guibg=#0c1021   gui=none
hi NonText      guifg=#424560                   gui=none
hi SpecialKey   guifg=#00ff00   guibg=#00ff00   gui=none

" Search
hi Search       guifg=#ff00ff   guibg=#00ff00   gui=none
hi IncSearch    guifg=#ff00ff   guibg=#00ff00   gui=none

" Interface Elements
hi StatusLine   guifg=#b4b5ca   guibg=#141827   gui=none
hi StatusLineNC guifg=#141827   guibg=#424560   gui=none
hi VertSplit    guifg=#424560   guibg=#424560   gui=none
hi Folded       guifg=#ff00ff   guibg=#00ff00   gui=none
hi IncSearch    guifg=#ff00ff   guibg=#00ff00   gui=none
hi Pmenu        guifg=#ff00ff   guibg=#00ff00   gui=none
hi SignColumn   guibg=#ff00ff   guibg=#00ff00   gui=none
" done
hi CursorLine                   guibg=#131d3a   gui=none
hi LineNr       guifg=#424560   guibg=#141827   gui=none
hi MatchParen                   guibg=#00ff00   gui=none

" Specials
hi Todo         guifg=#ff7ee8   guibg=#0c1021   gui=bold
hi Title        guifg=#ff00ff                   gui=none
hi Special      guifg=#4f9cf8   guibg=#101a30   gui=none

" Syntax Elements
hi String       guifg=#4f9cf8   guibg=#101a30   gui=none
hi Constant     guifg=#d1b7ff   guibg=#242736   gui=none
hi Number       guifg=#6ec200   guibg=#192820   gui=none
hi Statement    guifg=#9283ff                   gui=none
hi Function     guifg=#ffffff                   gui=bold
hi PreProc      guifg=#8f84bc
hi Comment      guifg=#555577
hi Type         guifg=#9ecffd                   gui=bold
hi Error        guifg=#ffffff   guibg=#ef1200   gui=bold
hi Identifier   guifg=#d8d3f1                   gui=none
hi Label        guifg=#ff00ff   guibg=#00ff00   gui=none

hi vimHiGuiRgb  guifg=#f7ec21

hi rubyInterpolationDelimiter guifg=#f7ec21
hi rubyStringEscape guifg=#f7ec21

" Python Highlighting
"hi pythonCoding     guifg=#ff0086
"hi pythonRun        guifg=#ff0086
"hi pythonBuiltinObj     guifg=#2b6ba2           gui=bold
"hi pythonBuiltinFunc    guifg=#2b6ba2           gui=bold
"hi pythonException      guifg=#ee0000           gui=bold
"hi pythonExClass        guifg=#66cd66           gui=bold
"hi pythonSpaceError     guibg=#f8e6e6
"hi pythonDocTest    guifg=#2f5f49
"hi pythonDocTest2   guifg=#3b916a
"hi pythonFunction   guifg=#ee0000               gui=bold
"hi pythonClass      guifg=#ff0086               gui=bold

" HTML Highlighting
"hi htmlTag              guifg=#00bdec           gui=bold
"hi htmlEndTag           guifg=#00bdec           gui=bold
"hi htmlSpecialTagName   guifg=#4aa04a
"hi htmlTagName          guifg=#4aa04a
"hi htmlTagN             guifg=#4aa04a

" Jinja Highlighting
"hi jinjaTagBlock    guifg=#ff0007   guibg=#fbf4c7   gui=bold
"hi jinjaVarBlock    guifg=#ff0007   guibg=#fbf4c7
"hi jinjaString      guifg=#0086d2   guibg=#fbf4c7
"hi jinjaNumber      guifg=#bf0945   guibg=#fbf4c7   gui=bold
"hi jinjaStatement   guifg=#fb660a   guibg=#fbf4c7   gui=bold
"hi jinjaComment     guifg=#008800   guibg=#002300   gui=italic
"hi jinjaFilter      guifg=#ff0086   guibg=#fbf4c7
"hi jinjaRaw         guifg=#aaaaaa   guibg=#fbf4c7
"hi jinjaOperator    guifg=#ffffff   guibg=#fbf4c7
"hi jinjaVariable    guifg=#92cd35   guibg=#fbf4c7
"hi jinjaAttribute   guifg=#dd7700   guibg=#fbf4c7
"hi jinjaSpecial     guifg=#008ffd   guibg=#fbf4c7

"hi atomyParticle      guifg=#0086d2
