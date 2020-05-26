" Vim color file - neverness_modified
" Generated by http://bytefluent.com/vivify 2020-05-24
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "fanto_vim_theme"

"hi SignColumn -- no settings --
"hi TabLineSel -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
hi Normal guifg=#ffffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi EnumerationName -- no settings --
"hi DefinedName -- no settings --
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
"hi CTagsClass -- no settings --
"hi TabLine -- no settings --
"hi clear -- no settings --
hi IncSearch guifg=#1d3026 guibg=#61a181 guisp=#61a181 gui=bold ctermfg=236 ctermbg=72 cterm=bold
hi WildMenu guifg=#43705a guibg=#e6fff3 guisp=#e6fff3 gui=NONE ctermfg=66 ctermbg=195 cterm=NONE
hi SpecialComment guifg=#00eeee guibg=#000000 guisp=#000000 gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
hi Typedef guifg=#ee7ae9 guibg=#000000 guisp=#000000 gui=bold ctermfg=213 ctermbg=NONE cterm=bold
hi Title guifg=#d5f505 guibg=#000000 guisp=#000000 gui=bold ctermfg=190 ctermbg=NONE cterm=bold
hi Folded guifg=#9bcfb5 guibg=#43705a guisp=#43705a gui=bold ctermfg=151 ctermbg=66 cterm=bold
hi PreCondit guifg=#bf3eff guibg=#000000 guisp=#000000 gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi Include guifg=#bf3eff guibg=#000000 guisp=#000000 gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#4EEE94 guibg=#222222 guisp=#222222 gui=NONE ctermfg=85 ctermbg=235 cterm=NONE
hi NonText guifg=#c0c0c0 guibg=#000000 guisp=#000000 gui=bold ctermfg=7 ctermbg=NONE cterm=bold
hi DiffText guifg=#d61cd6 guibg=#000000 guisp=#000000 gui=bold ctermfg=164 ctermbg=NONE cterm=bold
hi ErrorMsg guifg=#ff0000 guibg=#000000 guisp=#000000 gui=bold ctermfg=196 ctermbg=NONE cterm=bold
hi Ignore guifg=#ffffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Debug guifg=#00eeee guibg=#000000 guisp=#000000 gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Identifier guifg=#d9ed00 guibg=#000000 guisp=#000000 gui=NONE ctermfg=190 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#00eeee guibg=#000000 guisp=#000000 gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
hi Conditional guifg=#0bf503 guibg=#000000 guisp=#000000 gui=bold ctermfg=10 ctermbg=NONE cterm=bold
hi StorageClass guifg=#ee7ae9 guibg=#000000 guisp=#000000 gui=bold ctermfg=213 ctermbg=NONE cterm=bold
hi Todo guifg=#9fb6cd guibg=#232323 guisp=#232323 gui=NONE ctermfg=146 ctermbg=235 cterm=NONE
hi Special guifg=#00eeee guibg=#000000 guisp=#000000 gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
hi LineNr guifg=#09bae6 guibg=#000000 guisp=#000000 gui=NONE ctermfg=38 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#4EEE94 guibg=#333333 guisp=#333333 gui=NONE ctermfg=85 ctermbg=236 cterm=NONE
hi Label guifg=#4682b4 guibg=#000000 guisp=#000000 gui=bold ctermfg=67 ctermbg=NONE cterm=bold
hi PMenuSel guifg=#4EEE94 guibg=#333333 guisp=#333333 gui=NONE ctermfg=85 ctermbg=236 cterm=NONE
hi Search guifg=#1d3026 guibg=#61a181 guisp=#61a181 gui=bold ctermfg=236 ctermbg=72 cterm=bold
hi Delimiter guifg=#00eeee guibg=#000000 guisp=#000000 gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
hi Statement guifg=#07ed26 guibg=#000000 guisp=#000000 gui=bold ctermfg=10 ctermbg=NONE cterm=bold
hi SpellRare guifg=#efface guibg=#000000 guisp=#000000 gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi Comment guifg=#ffffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Character guifg=#87ceeb guibg=#000000 guisp=#000000 gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
hi Float guifg=#87ceeb guibg=#000000 guisp=#000000 gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
hi Number guifg=#87ceeb guibg=#000000 guisp=#000000 gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
hi Boolean guifg=#87ceeb guibg=#000000 guisp=#000000 gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
hi Operator guifg=#03f017 guibg=#000000 guisp=#000000 gui=bold ctermfg=10 ctermbg=NONE cterm=bold
hi CursorLine guifg=NONE guibg=#222222 guisp=#222222 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
hi Question guifg=#9bcfb5 guibg=#000000 guisp=#000000 gui=bold ctermfg=151 ctermbg=NONE cterm=bold
hi WarningMsg guifg=#BF3EFF guibg=#000000 guisp=#000000 gui=bold ctermfg=13 ctermbg=NONE cterm=bold
hi VisualNOS guifg=#9bcfb5 guibg=#000000 guisp=#000000 gui=NONE ctermfg=151 ctermbg=NONE cterm=NONE
hi DiffDelete guifg=#ff0000 guibg=#000000 guisp=#000000 gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi ModeMsg guifg=#32fc00 guibg=#000000 guisp=#000000 gui=bold ctermfg=82 ctermbg=NONE cterm=bold
hi CursorColumn guifg=NONE guibg=#222222 guisp=#222222 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
hi Define guifg=#bf3eff guibg=#000000 guisp=#000000 gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi Function guifg=#63b8ff guibg=#000000 guisp=#000000 gui=NONE ctermfg=75 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#9bcfb5 guibg=#43705a guisp=#43705a gui=bold ctermfg=151 ctermbg=66 cterm=bold
hi PreProc guifg=#e500f5 guibg=#000000 guisp=#000000 gui=NONE ctermfg=201 ctermbg=NONE cterm=NONE
hi Visual guifg=#e6fff3 guibg=#61a181 guisp=#61a181 gui=NONE ctermfg=195 ctermbg=72 cterm=NONE
hi MoreMsg guifg=#08f200 guibg=#000000 guisp=#000000 gui=bold ctermfg=10 ctermbg=NONE cterm=bold
hi SpellCap guifg=#00008b guibg=#000000 guisp=#000000 gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE
hi VertSplit guifg=#61a181 guibg=#61a181 guisp=#61a181 gui=NONE ctermfg=72 ctermbg=72 cterm=NONE
hi Exception guifg=#4682b4 guibg=#000000 guisp=#000000 gui=bold ctermfg=67 ctermbg=NONE cterm=bold
hi Keyword guifg=#4682b4 guibg=#000000 guisp=#000000 gui=bold ctermfg=67 ctermbg=NONE cterm=bold
hi Type guifg=#73056f guibg=#000000 guisp=#000000 gui=bold ctermfg=53 ctermbg=NONE cterm=bold
hi DiffChange guifg=#eaff08 guibg=#000000 guisp=#000000 gui=NONE ctermfg=190 ctermbg=NONE cterm=NONE
hi Cursor guifg=#43705a guibg=#e6fff3 guisp=#e6fff3 gui=NONE ctermfg=66 ctermbg=195 cterm=NONE
hi SpellLocal guifg=#006400 guibg=#000000 guisp=#000000 gui=NONE ctermfg=22 ctermbg=NONE cterm=NONE
hi Error guifg=#ff0000 guibg=#232323 guisp=#232323 gui=bold ctermfg=196 ctermbg=235 cterm=bold
hi PMenu guifg=#4EEE94 guibg=#222222 guisp=#222222 gui=NONE ctermfg=85 ctermbg=235 cterm=NONE
hi SpecialKey guifg=#9bcfb5 guibg=#000000 guisp=#000000 gui=NONE ctermfg=151 ctermbg=NONE cterm=NONE
hi Constant guifg=#d100ed guibg=#000000 guisp=#000000 gui=NONE ctermfg=165 ctermbg=NONE cterm=NONE
hi Tag guifg=#00eeee guibg=#000000 guisp=#000000 gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
hi String guifg=#87ceeb guibg=#000000 guisp=#000000 gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#213d54 guisp=#213d54 gui=NONE ctermfg=NONE ctermbg=23 cterm=NONE
hi Repeat guifg=#4682b4 guibg=#000000 guisp=#000000 gui=bold ctermfg=67 ctermbg=NONE cterm=bold
hi SpellBad guifg=#8b0000 guibg=#000000 guisp=#000000 gui=NONE ctermfg=88 ctermbg=NONE cterm=NONE
hi Directory guifg=#e6fff3 guibg=#000000 guisp=#000000 gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi Structure guifg=#ee7ae9 guibg=#000000 guisp=#000000 gui=bold ctermfg=213 ctermbg=NONE cterm=bold
hi Macro guifg=#bf3eff guibg=#000000 guisp=#000000 gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi Underlined guifg=#eecfa1 guibg=#000000 guisp=#000000 gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi DiffAdd guifg=#03f503 guibg=#000000 guisp=#000000 gui=bold ctermfg=10 ctermbg=NONE cterm=bold
hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi lcursor guifg=#43705a guibg=#e6fff3 guisp=#e6fff3 gui=NONE ctermfg=66 ctermbg=195 cterm=NONE
