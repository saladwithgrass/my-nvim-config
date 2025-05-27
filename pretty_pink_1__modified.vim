set background=light
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "pretty_pink_1__modified"

hi Normal guifg=#6b6090 guibg=#f0e4f6 guisp=#f0e4f6 gui=NONE ctermfg=60 ctermbg=255 cterm=NONE
hi SpecialComment guifg=#828282 guibg=#00ff00 guisp=#00ff00 gui=NONE ctermfg=8 ctermbg=10 cterm=NONE
hi Typedef guifg=#828282 guibg=#0000ff guisp=#0000ff gui=bold ctermfg=8 ctermbg=21 cterm=bold
hi PreCondit guifg=#828282 guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi Include guifg=#828282 guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi Float guifg=#828282 guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#e3c8e3 guibg=#9289af guisp=#9289af gui=NONE ctermfg=254 ctermbg=103 cterm=NONE
hi NonText guifg=#6b6090 guibg=#f0e4f6 guisp=#f0e4f6 gui=NONE ctermfg=60 ctermbg=255 cterm=NONE
hi ErrorMsg guifg=#c94e6b guibg=#f0e4f6 guisp=#f0e4f6 gui=NONE ctermfg=168 ctermbg=255 cterm=NONE
hi Ignore guifg=#828282 guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi Debug guifg=#828282 guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=#f0e4f6 guibg=#6b6090 guisp=#6b6090 gui=NONE ctermfg=255 ctermbg=60 cterm=NONE
hi Identifier guifg=#c94e6b guibg=NONE guisp=NONE gui=NONE ctermfg=168 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#828282 guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=8 ctermbg=15 cterm=NONE
hi Conditional guifg=#828282 guibg=NONE guisp=NONE gui=bold ctermfg=8 ctermbg=NONE cterm=bold
hi StorageClass guifg=#828282 guibg=NONE guisp=NONE gui=bold ctermfg=8 ctermbg=NONE cterm=bold
hi Todo guifg=#828282 guibg=#ffff00 guisp=#ffff00 gui=NONE ctermfg=8 ctermbg=11 cterm=NONE
hi Special guifg=#828282 guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi LineNr guifg=#6b6090 guibg=#e3c8e3 guisp=#e3c8e3 gui=NONE ctermfg=60 ctermbg=254 cterm=NONE
hi StatusLine guifg=#e3c8e3 guibg=#6b6090 guisp=#6b6090 gui=bold ctermfg=254 ctermbg=60 cterm=bold
hi Label guifg=#828282 guibg=NONE guisp=NONE gui=bold ctermfg=8 ctermbg=NONE cterm=bold
hi PMenuSel guifg=#6b6090 guibg=#f0e4f6 guisp=#f0e4f6 gui=NONE ctermfg=60 ctermbg=255 cterm=NONE
hi Search guifg=#828282 guibg=#ffff00 guisp=#ffff00 gui=NONE ctermfg=8 ctermbg=11 cterm=NONE
hi Delimiter guifg=#828282 guibg=#000000 guisp=#000000 gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi Statement guifg=#5668ae guibg=NONE guisp=NONE gui=bold ctermfg=61 ctermbg=NONE cterm=bold
hi Comment guifg=#f5ad9f guibg=NONE guisp=NONE gui=NONE ctermfg=217 ctermbg=NONE cterm=NONE
hi Character guifg=#828282 guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi Number guifg=#bc7499 guibg=NONE guisp=NONE gui=NONE ctermfg=132 ctermbg=NONE cterm=NONE
hi Boolean guifg=#828282 guibg=NONE guisp=NONE gui=bold ctermfg=8 ctermbg=NONE cterm=bold
hi Operator guifg=#828282 guibg=NONE guisp=NONE gui=bold ctermfg=8 ctermbg=NONE cterm=bold
hi DiffDelete guifg=#c92e6c guibg=#ff7192 guisp=#ff7192 gui=bold ctermfg=168 ctermbg=204 cterm=bold
hi Define guifg=#828282 guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi Function guifg=#e664c1 guibg=NONE guisp=NONE gui=NONE ctermfg=169 ctermbg=NONE cterm=NONE
hi PreProc guifg=#e664c1 guibg=NONE guisp=NONE gui=NONE ctermfg=169 ctermbg=NONE cterm=NONE
hi Visual guifg=#828282 guibg=#b3b3b3 guisp=#b3b3b3 gui=NONE ctermfg=8 ctermbg=249 cterm=NONE
hi Exception guifg=#6b6090 guibg=#ebb5b5 guisp=#ebb5b5 gui=NONE ctermfg=60 ctermbg=181 cterm=NONE
hi Keyword guifg=#5673a1 guibg=NONE guisp=NONE gui=bold ctermfg=67 ctermbg=NONE cterm=bold
hi Type guifg=#c94e6b guibg=NONE guisp=NONE gui=bold ctermfg=168 ctermbg=NONE cterm=bold
hi Cursor guifg=#f0e4f6 guibg=#353048 guisp=#353048 gui=NONE ctermfg=255 ctermbg=238 cterm=NONE
hi Error guifg=#828282 guibg=#ff0000 guisp=#ff0000 gui=NONE ctermfg=8 ctermbg=196 cterm=NONE
hi PMenu guifg=#e3c8e3 guibg=#6b6090 guisp=#6b6090 gui=NONE ctermfg=254 ctermbg=60 cterm=NONE
hi Constant guifg=#53c4a0 guibg=NONE guisp=NONE gui=NONE ctermfg=79 ctermbg=NONE cterm=NONE
hi Tag guifg=#828282 guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi String guifg=#53c4a0 guibg=NONE guisp=NONE gui=bold ctermfg=79 ctermbg=NONE cterm=bold
hi PMenuThumb guifg=NONE guibg=#e3c8e3 guisp=#e3c8e3 gui=NONE ctermfg=NONE ctermbg=254 cterm=NONE
hi Repeat guifg=#828282 guibg=NONE guisp=NONE gui=bold ctermfg=8 ctermbg=NONE cterm=bold
hi Structure guifg=#828282 guibg=NONE guisp=NONE gui=bold ctermfg=8 ctermbg=NONE cterm=bold
hi Macro guifg=#828282 guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi DiffAdd guifg=#6b6090 guibg=#a7e3a1 guisp=#a7e3a1 gui=NONE ctermfg=60 ctermbg=114 cterm=NONE
hi cursorim guifg=#828282 guibg=#536991 guisp=#536991 gui=NONE ctermfg=8 ctermbg=60 cterm=NONE

"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi TabLineSel -- no settings --
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi Question -- no settings --
"hi WarningMsg -- no settings --
"hi VisualNOS -- no settings --
"hi ModeMsg -- no settings --
"hi CursorColumn -- no settings --
"hi FoldColumn -- no settings --
"hi EnumerationName -- no settings --
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
"hi VertSplit -- no settings --
"hi DiffChange -- no settings --
"hi SpellLocal -- no settings --
"hi SpecialKey -- no settings --
"hi DefinedName -- no settings --
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi Directory -- no settings --
"hi Underlined -- no settings --
"hi TabLine -- no settings --
"hi clear -- no settings --
"hi IncSearch -- no settings --
"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
"hi Title -- no settings --
"hi Folded -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi DiffText -- no settings --
