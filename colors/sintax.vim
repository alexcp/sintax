" Sintax 256 colors
" ----------------------------------------------------------
" Author:	Alexandre Croteau-Pothier (http://alexcp.com)
" Version:	1.0
" ----------------------------------------------------------

" Default Colours
let s:foreground = "256"
let s:background = "255"
let s:selection = "253"
let s:line = "254"
let s:comment = "246"
let s:red = "160"
let s:orange = "130"
let s:darkBlue = "017"
let s:lessDarkblue = "019"
let s:yellow = "003"
let s:green = "022"
let s:aqua = "023"
let s:darkRed = "088"
let s:blue = "024"
let s:purple = "060"
let s:lightPink = "009"
let s:window = "233"
let s:gray = "236"
let s:lightGray = "241"
let s:black = "256"
let s:white = "255"

set background=light
hi clear
syntax reset

let g:colors_name = "Sintax"

" Sets the highlighting for the given group
fun <SID>X(group, fg, bg, attr)
	if a:fg != ""
		exec "hi " . a:group . " guifg=#" . a:fg . " ctermfg=" . a:fg
	endif
	if a:bg != ""
		exec "hi " . a:group . " guibg=#" . a:bg . " ctermbg=" . a:bg
	endif
	if a:attr != ""
		exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
	endif
endfun

" Vim Highlighting
call <SID>X("Normal", s:foreground, s:background, "")
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
call <SID>X("NonText", s:selection, "", "")
call <SID>X("SpecialKey", s:selection, "", "")
call <SID>X("Search", "", s:white, "reverse")
call <SID>X("TabLine", s:line, s:white, "reverse")
call <SID>X("StatusLine", s:line, s:lightPink, "reverse")
call <SID>X("StatusLineNC", s:line, s:black, "reverse")
call <SID>X("VertSplit", s:black, s:line, "none")
call <SID>X("Visual", "", s:selection, "")
call <SID>X("Directory", s:darkBlue, "", "")
call <SID>X("ModeMsg", s:black, "", "")
call <SID>X("MoreMsg", s:black, "", "")
call <SID>X("Question", s:black, "", "")
call <SID>X("WarningMsg", s:red, "", "")
call <SID>X("MatchParen", "", s:selection, "")
call <SID>X("Folded", s:comment, s:background, "")
call <SID>X("FoldColumn", "", s:background, "")
if version >= 700
	call <SID>X("CursorLine", "", s:line, "none")
	call <SID>X("CursorColumn", "", s:line, "none")
	call <SID>X("PMenu", s:foreground, s:selection, "none")
	call <SID>X("PMenuSel", s:foreground, s:selection, "reverse")
end
if version >= 703
	call <SID>X("ColorColumn", "", s:line, "none")
end

" Standard Highlighting
call <SID>X("Comment", s:comment, "", "")
call <SID>X("Todo", s:comment, s:background, "")
call <SID>X("Title", s:comment, "", "")
call <SID>X("Identifier", s:blue, "", "none")
call <SID>X("Statement", s:foreground, "", "")
call <SID>X("Conditional", s:darkRed, "", "")
call <SID>X("Repeat", s:foreground, "", "")
call <SID>X("Structure", s:purple, "", "")
call <SID>X("Function", s:blue, "", "")
call <SID>X("Constant", s:darkBlue, "", "")
call <SID>X("String", s:darkBlue, "", "")
call <SID>X("Special", s:foreground, "", "")
call <SID>X("PreProc", s:purple, "", "")
call <SID>X("Operator", s:aqua, "", "none")
call <SID>X("Type", s:blue, "", "none")
call <SID>X("Define", s:black, "", "")
call <SID>X("Include", s:blue, "", "")
"call <SID>X("Ignore", "666666", "", "")

" Vim Highlighting
call <SID>X("vimCommand", s:red, "", "none")

" C Highlighting
call <SID>X("cType", s:yellow, "", "")
call <SID>X("cStorageClass", s:purple, "", "")
call <SID>X("cConditional", s:darkRed, "", "")
call <SID>X("cRepeat", s:purple, "", "")

" PHP Highlighting
call <SID>X("phpVarSelector", s:red, "", "")
call <SID>X("phpKeyword", s:purple, "", "")
call <SID>X("phpRepeat", s:purple, "", "")
call <SID>X("phpConditional", s:darkRed, "", "")
call <SID>X("phpStatement", s:black, "", "")
call <SID>X("phpMemberSelector", s:foreground, "", "")

" Ruby Highlighting
call <SID>X("rubySymbol", s:blue, "", "")
call <SID>X("rubyConstant", s:darkBlue, "", "")
call <SID>X("rubyAccess", s:darkBlue, "", "")
call <SID>X("rubyAttribute", s:blue, "", "")
call <SID>X("rubyInclude", s:blue, "", "")
call <SID>X("rubyLocalVariableOrMethod", s:darkBlue, "", "")
call <SID>X("rubyCurlyBlock", s:red, "", "")
call <SID>X("rubyStringDelimiter", s:darkBlue, "", "")
call <SID>X("rubyInterpolationDelimiter", s:darkBlue, "", "")
call <SID>X("rubyConditional", s:darkRed, "", "")
call <SID>X("rubyRepeat", s:orange, "", "")
call <SID>X("rubyControl", s:red, "", "")
call <SID>X("rubyException", s:red, "", "bold")

" Python Highlighting
call <SID>X("pythonInclude", s:purple, "", "")
call <SID>X("pythonStatement", s:purple, "", "")
call <SID>X("pythonConditional", s:darkRed, "", "")
call <SID>X("pythonRepeat", s:purple, "", "")
call <SID>X("pythonException", s:red, "", "")
call <SID>X("pythonFunction", s:blue, "", "")
call <SID>X("pythonPreCondit", s:purple, "", "")
call <SID>X("pythonRepeat", s:aqua, "", "")
call <SID>X("pythonExClass", s:darkBlue, "", "")

" JavaScript Highlighting
call <SID>X("javaScriptBraces", s:red, "", "")
call <SID>X("javaScriptFunction", s:black, "", "")
call <SID>X("javaScriptConditional", s:darkRed, "", "")
call <SID>X("javaScriptRepeat", s:purple, "", "")
call <SID>X("javaScriptNumber", s:darkBlue, "", "")
call <SID>X("javaScriptMember", s:darkBlue, "", "")

" HTML Highlighting
call <SID>X("htmlTag", s:red, "", "")
call <SID>X("htmlTagName", s:gray, "", "")
call <SID>X("htmlArg", s:gray, "", "")
call <SID>X("htmlScriptTag", s:gray, "", "")

" Diff Highlighting
call <SID>X("diffAdded", s:green, "", "")
call <SID>X("diffRemoved", s:red, "", "")

" Lua Highlighting
call <SID>X("luaStatement", s:purple, "", "")
call <SID>X("luaRepeat", s:purple, "", "")
call <SID>X("luaCondStart", s:purple, "", "")
call <SID>X("luaCondElseif", s:purple, "", "")
call <SID>X("luaCond", s:purple, "", "")
call <SID>X("luaCondEnd", s:purple, "", "")

" Cucumber Highlighting
call <SID>X("cucumberGiven", s:blue, "", "")
call <SID>X("cucumberGivenAnd", s:blue, "", "")

" Go Highlighting
call <SID>X("goDirective", s:purple, "", "")
call <SID>X("goDeclaration", s:purple, "", "")
call <SID>X("goStatement", s:purple, "", "")
call <SID>X("goConditional", s:darkRed, "", "")
call <SID>X("goConstants", s:darkBlue, "", "")
call <SID>X("goTodo", s:darkBlue, "", "")
call <SID>X("goDeclType", s:blue, "", "")
call <SID>X("goBuiltins", s:purple, "", "")

" delete the function
delf <SID>X
