" Base16 Default (https://github.com/chriskempson/base16)
" Scheme: Chris Kempson (http://chriskempson.com)

" GUI Base16 Color Definitions
let s:gui00 = "151515"
let s:gui01 = "202020"
let s:gui02 = "303030"
let s:gui03 = "505050"
let s:gui04 = "b0b0b0"
let s:gui05 = "d0d0d0"
let s:gui06 = "e0e0e0"
let s:gui07 = "f5f5f5"
let s:gui08 = "ac4142"
let s:gui09 = "d28445"
let s:gui0A = "f4bf75"
let s:gui0B = "90a959"
let s:gui0C = "75b5aa"
let s:gui0D = "6a9fb5"
let s:gui0E = "aa759f"
let s:gui0F = "8f5536"

" Terminal Base16 Color Definitions
let s:cterm00 = "00"
let s:cterm03 = "08"
let s:cterm05 = "07"
let s:cterm07 = "15"
let s:cterm08 = "01"
let s:cterm0A = "03"
let s:cterm0B = "02"
let s:cterm0C = "06"
let s:cterm0D = "04"
let s:cterm0E = "05"
if exists('base16colorspace') && base16colorspace == "256"
  let s:cterm01 = "18"
  let s:cterm02 = "19"
  let s:cterm04 = "20"
  let s:cterm06 = "21"
  let s:cterm09 = "16"
  let s:cterm0F = "17"
else
  let s:cterm01 = "10"
  let s:cterm02 = "11"
  let s:cterm04 = "12"
  let s:cterm06 = "13"
  let s:cterm09 = "09"
  let s:cterm0F = "14"
endif

" Theme Setup
hi clear
syntax reset
let g:colors_name = "base16-default"

" Highlighting function
fun! <SID>hi(group, guifg, guibg, ctermfg, ctermbg, attr)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" Vim Editor Colors
call <SID>hi("Bold",          "", "", "", "", "bold")
call <SID>hi("Debug",         s:gui08, "", s:cterm08, "", "")
call <SID>hi("Directory",     s:gui0D, "", s:cterm0D, "", "")
call <SID>hi("ErrorMsg",      s:gui08, s:gui00, s:cterm08, s:cterm00, "")
call <SID>hi("Exception",     s:gui08, "", s:cterm08, "", "")
call <SID>hi("FoldColumn",    "", s:gui01, "", s:cterm01, "")
call <SID>hi("Folded",        s:gui03, s:gui01, s:cterm03, s:cterm01, "")
call <SID>hi("IncSearch",     s:gui0A, "", s:cterm0A, "", "")
call <SID>hi("Italic",        "", "", "", "", "none")
call <SID>hi("Macro",         s:gui08, "", s:cterm08, "", "")
call <SID>hi("MatchParen",    s:gui03, s:gui00, s:cterm03, s:cterm00,  "reverse")
call <SID>hi("ModeMsg",       s:gui0B, "", s:cterm0B, "", "")
call <SID>hi("MoreMsg",       s:gui0B, "", s:cterm0B, "", "")
call <SID>hi("Question",      s:gui0A, "", s:cterm0A, "", "")
call <SID>hi("Search",        s:gui0A, s:gui01, s:cterm0A, s:cterm01,  "reverse")
call <SID>hi("SpecialKey",    s:gui03, "", s:cterm03, "", "")
call <SID>hi("Title",         s:gui05, s:gui01, s:cterm05, s:cterm01, "reverse")
call <SID>hi("TooLong",       s:gui08, "", s:cterm08, "", "")
call <SID>hi("Underlined",    s:gui08, "", s:cterm08, "", "")
call <SID>hi("Visual",        "", s:gui02, "", s:cterm02, "")
call <SID>hi("VisualNOS",     s:gui08, "", s:cterm08, "", "")
call <SID>hi("WarningMsg",    s:gui08, "", s:cterm08, "", "")
call <SID>hi("WildMenu",      s:gui08, "", s:cterm08, "", "")

if &background == "dark"
  call <SID>hi("Cursor",        s:gui00, s:gui05, s:cterm00, s:cterm05, "")
  call <SID>hi("NonText",       s:gui03, "", s:cterm03, "", "")
  call <SID>hi("Normal",        s:gui05, s:gui00, s:cterm05, s:cterm00, "")
  call <SID>hi("LineNr",        s:gui03, s:gui01, s:cterm03, s:cterm01, "")
  call <SID>hi("SpecialKey",    s:gui03, "", s:cterm03, "", "")
  call <SID>hi("StatusLine",    s:gui04, s:gui02, s:cterm04, s:cterm02, "none")
  call <SID>hi("StatusLineNC",  s:gui03, s:gui01, s:cterm03, s:cterm01, "none")
  call <SID>hi("VertSplit",     s:gui02, s:gui02, s:cterm02, s:cterm02, "none")
  call <SID>hi("ColorColumn",  "", s:gui01, "", s:cterm01, "none")
  call <SID>hi("CursorColumn",  "", s:gui01, "", s:cterm01, "none")
  call <SID>hi("CursorLine",    "", s:gui01, "", s:cterm01, "none")
  call <SID>hi("CursorLineNr",  s:gui03, s:gui01, s:cterm03, s:cterm01, "")
  call <SID>hi("PMenu",         s:gui04, s:gui01, s:cterm04, s:cterm01, "none")
  call <SID>hi("PMenuSel",      s:gui04, s:gui01, s:cterm04, s:cterm01, "reverse")
  call <SID>hi("TabLine",       s:gui04, s:gui02, s:cterm04, s:cterm02, "none")
  call <SID>hi("TabLineFill",   s:gui04, s:gui02, s:cterm04, s:cterm02, "none")
  call <SID>hi("TabLineSel",    s:gui04, s:gui02, s:cterm04, s:cterm02, "none")
  call <SID>hi("DiffAdd",       s:gui0B, s:gui00, s:cterm0B, s:cterm00, "")
  call <SID>hi("DiffChange",    s:gui05, s:gui00, s:cterm05, s:cterm00, "")
  call <SID>hi("DiffDelete",    s:gui08, s:gui00, s:cterm08, s:cterm00, "")
  call <SID>hi("DiffText",      s:gui0D, s:gui00, s:cterm0D, s:cterm00, "")
else
  call <SID>hi("Cursor",        s:gui00, s:gui02, s:cterm00, s:cterm02, "")
  call <SID>hi("NonText",       s:gui05, "", s:cterm05, "", "")
  call <SID>hi("Normal",        s:gui02, s:gui07, s:cterm02, s:cterm05, "")
  call <SID>hi("LineNr",        s:gui04, s:gui06, s:cterm04, s:cterm06, "")
  call <SID>hi("SpecialKey",    s:gui05, "", s:cterm05, "", "")
  call <SID>hi("StatusLine",    s:gui04, s:gui06, s:cterm04, s:cterm06, "none")
  call <SID>hi("StatusLineNC",  s:gui04, s:gui06, s:cterm04, s:cterm06, "none")
  call <SID>hi("VertSplit",     s:gui05, s:gui05, s:cterm05, s:cterm05, "none")
  call <SID>hi("CursorColumn",  "", s:gui06, "", s:cterm06, "none")
  call <SID>hi("CursorLine",    "", s:gui06, "", s:cterm06, "none")
  call <SID>hi("CursorLineNr",  s:gui04, s:gui06, s:cterm04, s:cterm06, "")
  call <SID>hi("PMenu",         s:gui05, s:gui03, s:cterm05, s:cterm03, "none")
  call <SID>hi("PMenuSel",      s:gui05, s:gui03, s:cterm05, s:cterm03, "reverse")
  call <SID>hi("TabLine",       s:gui05, s:gui01, s:cterm05, s:cterm01, "reverse")
  call <SID>hi("TabLineFill",   s:gui06, s:gui01, s:cterm06, s:cterm01, "reverse")
  call <SID>hi("TabLineSel",    s:gui06, s:gui01, s:cterm06, s:cterm01, "reverse")
  call <SID>hi("DiffAdd",       s:gui0B, s:gui0F, s:cterm0B, s:cterm0F, "")
  call <SID>hi("DiffChange",    s:gui05, s:gui0F, s:cterm05, s:cterm0F, "")
  call <SID>hi("DiffDelete",    s:gui08, s:gui0F, s:cterm08, s:cterm0F, "")
  call <SID>hi("DiffText",      s:gui0D, s:gui0F, s:cterm0D, s:cterm0F, "")
endif

" Standard Syntax Highlighting
call <SID>hi("Boolean",      s:gui09, "", s:cterm09, "", "")
call <SID>hi("Character",    s:gui08, "", s:cterm08, "", "")
call <SID>hi("Comment",      s:gui03, "", s:cterm03, "", "")
call <SID>hi("Conditional",  s:gui0E, "", s:cterm0E, "", "")
call <SID>hi("Constant",     s:gui09, "", s:cterm09, "", "")
call <SID>hi("Define",       s:gui0E, "", s:cterm0E, "", "none")
call <SID>hi("Delimiter",    s:gui0F, "", s:cterm0F, "", "")
call <SID>hi("Float",        s:gui09, "", s:cterm09, "", "")
call <SID>hi("Function",     s:gui0D, "", s:cterm0D, "", "")
call <SID>hi("Identifier",   s:gui08, "", s:cterm08, "", "none")
call <SID>hi("Include",      s:gui0D, "", s:cterm0D, "", "")
call <SID>hi("Keyword",      s:gui0E, "", s:cterm0E, "", "")
call <SID>hi("Label",        s:gui0A, "", s:cterm0A, "", "")
call <SID>hi("Number",       s:gui09, "", s:cterm09, "", "")
call <SID>hi("Operator",     s:gui05, "", s:cterm05, "", "none")
call <SID>hi("PreProc",      s:gui0A, "", s:cterm0A, "", "")
call <SID>hi("Repeat",       s:gui0A, "", s:cterm0A, "", "")
call <SID>hi("Special",      s:gui0C, "", s:cterm0C, "", "")
call <SID>hi("SpecialChar",  s:gui0F, "", s:cterm0F, "", "")
call <SID>hi("Statement",    s:gui08, "", s:cterm08, "", "")
call <SID>hi("StorageClass", s:gui0A, "", s:cterm0A, "", "")
call <SID>hi("String",       s:gui0B, "", s:cterm0B, "", "")
call <SID>hi("Structure",    s:gui0E, "", s:cterm0E, "", "")
call <SID>hi("Tag",          s:gui0A, "", s:cterm0A, "", "")
call <SID>hi("Title",        s:gui0D, s:gui00, s:cterm0D, s:cterm00, "none")
call <SID>hi("Todo",         s:gui0A, s:gui01, s:cterm0A, s:cterm01, "")
call <SID>hi("Type",         s:gui09, "", s:cterm09, "", "none")
call <SID>hi("Typedef",      s:gui0A, "", s:cterm0A, "", "")

" Spelling Highlighting
call <SID>hi("SpellBad",     s:gui00, s:gui08, s:cterm00, s:cterm08, "")
"call <SID>hi("SpellCap",    s:gui00, s:gui08, s:cterm00, s:cterm08, "")
"call <SID>hi("SpellRare",   s:gui00, s:gui08, s:cterm00, s:cterm08, "")
"call <SID>hi("SpellLocal",  s:gui00, s:gui08, s:cterm00, s:cterm08, "")

" Additional Diff Highlighting
call <SID>hi("DiffAdded",    s:gui0B, "", s:cterm0B, "", "")
call <SID>hi("DiffFile",     s:gui08, "", s:cterm08, "", "")
call <SID>hi("DiffNewFile",  s:gui0B, "", s:cterm0B, "", "")
call <SID>hi("DiffLine",     s:gui0D, "", s:cterm0D, "", "")
call <SID>hi("DiffRemoved",  s:gui08, "", s:cterm08, "", "")

" Ruby Highlighting
call <SID>hi("rubyAttribute",               s:gui0D, "", s:cterm0D, "", "")
call <SID>hi("rubyConstant",                s:gui0A, "", s:cterm0A, "", "")
call <SID>hi("rubyInterpolation",           s:gui0B, "", s:cterm0B, "", "")
call <SID>hi("rubyInterpolationDelimiter",  s:gui0F, "", s:cterm0F, "", "")
call <SID>hi("rubyRegexp",                  s:gui0C, "", s:cterm0C, "", "")
call <SID>hi("rubySymbol",                  s:gui0B, "", s:cterm0B, "", "")
call <SID>hi("rubyStringDelimiter",         s:gui0B, "", s:cterm0B, "", "")

" PHP Highlighting
call <SID>hi("phpMemberSelector",  s:gui05, "", s:cterm05, "", "")
call <SID>hi("phpComparison",      s:gui05, "", s:cterm05, "", "")
call <SID>hi("phpParent",          s:gui05, "", s:cterm05, "", "")

" HTML Highlighting
call <SID>hi("htmlBold",    s:gui0A, "", s:cterm0A, "", "")
call <SID>hi("htmlItalic",  s:gui0E, "", s:cterm0E, "", "")
call <SID>hi("htmlEndTag",  s:gui05, "", s:cterm05, "", "")
call <SID>hi("htmlTag",     s:gui05, "", s:cterm05, "", "")

" CSS Highlighting
call <SID>hi("cssBraces",      s:gui05, "", s:cterm05, "", "")
call <SID>hi("cssClassName",   s:gui0E, "", s:cterm0E, "", "")
call <SID>hi("cssColor",       s:gui0C, "", s:cterm0C, "", "")

" SASS Highlighting
call <SID>hi("sassIdChar",     s:gui08, "", s:cterm08, "", "")
call <SID>hi("sassClassChar",  s:gui09, "", s:cterm09, "", "")
call <SID>hi("sassInclude",    s:gui0E, "", s:cterm0E, "", "")
call <SID>hi("sassMixing",     s:gui0E, "", s:cterm0E, "", "")
call <SID>hi("sassMixinName",  s:gui0D, "", s:cterm0D, "", "")

" JavaScript Highlighting
call <SID>hi("javaScript",        s:gui05, "", s:cterm05, "", "")
call <SID>hi("javaScriptBraces",  s:gui05, "", s:cterm05, "", "")
call <SID>hi("javaScriptNumber",  s:gui09, "", s:cterm09, "", "")

" Markdown Highlighting
call <SID>hi("markdownCode",              s:gui0B, "", s:cterm0B, "", "")
call <SID>hi("markdownCodeBlock",         s:gui0B, "", s:cterm0B, "", "")
call <SID>hi("markdownHeadingDelimiter",  s:gui0D, "", s:cterm0D, "", "")

" Git Highlighting
call <SID>hi("gitCommitOverflow",  s:gui08, "", s:cterm08, "", "")
call <SID>hi("gitCommitSummary",   s:gui0B, "", s:cterm0B, "", "")

" Remove Highlighting Function
delf <SID>hi

" Remove Colour Variables
unlet s:gui00 s:gui01 s:gui02 s:gui03  s:gui04  s:gui05  s:gui06  s:gui07  s:gui08  s:gui09 s:gui0A  s:gui0B  s:gui0C  s:gui0D  s:gui0E  s:gui0F
unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm05 s:cterm06 s:cterm07 s:cterm08 s:cterm09 s:cterm0A s:cterm0B s:cterm0C s:cterm0D s:cterm0E s:cterm0F
