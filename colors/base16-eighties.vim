" Base16 Eighties (https://github.com/chriskempson/base16)
" Scheme: Chris Kempson (http://chriskempson.com)

" GUI Base16 Color Definitions
let s:gui00 = "2d2d2d"
let s:gui01 = "393939"
let s:gui02 = "515151"
let s:gui03 = "747369"
let s:gui04 = "a09f93"
let s:gui05 = "d3d0c8"
let s:gui06 = "e8e6df"
let s:gui07 = "f2f0ec"
let s:gui08 = "f2777a"
let s:gui09 = "f99157"
let s:gui0A = "ffcc66"
let s:gui0B = "99cc99"
let s:gui0C = "66cccc"
let s:gui0D = "6699cc"
let s:gui0E = "cc99cc"
let s:gui0F = "d27b53"

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
let g:colors_name = "base16-eighties"

" Highlighting function
fun! <SID>hi(group, guifg, guibg, ctermfg, ctermbg, attr)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . s:DarkOrLightGui(a:guifg)
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . s:DarkOrLightGui(a:guibg)
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . s:DarkOrLightCterm(a:ctermfg)
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . s:DarkOrLightCterm(a:ctermbg)
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

fun s:DarkOrLightGui(color)
  if &background == "dark"
    return a:color
  endif

  if a:color == s:gui00
    return s:gui07
  elseif a:color == s:gui01
    return s:gui06
  elseif a:color == s:gui02
    return s:gui05
  elseif a:color == s:gui03
    return s:gui04
  elseif a:color == s:gui04
    return s:gui03
  elseif a:color == s:gui05
    return s:gui02
  elseif a:color == s:gui05
    return s:gui02
  elseif a:color == s:gui06
    return s:gui01
  elseif a:color == s:gui07
    return s:gui00
  endif

  return a:color
endfun

fun s:DarkOrLightCterm(color)
  if &background == "dark"
    return a:color
  endif

  if a:color == s:cterm00
    return s:cterm07
  elseif a:color == s:cterm01
    return s:cterm06
  elseif a:color == s:cterm02
    return s:cterm05
  elseif a:color == s:cterm03
    return s:cterm04
  elseif a:color == s:cterm04
    return s:cterm03
  elseif a:color == s:cterm05
    return s:cterm02
  elseif a:color == s:cterm05
    return s:cterm02
  elseif a:color == s:cterm06
    return s:cterm01
  elseif a:color == s:cterm07
    return s:cterm00
  endif

  return a:color
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
call <SID>hi("TooLong",       s:gui08, "", s:cterm08, "", "")
call <SID>hi("Underlined",    s:gui08, "", s:cterm08, "", "")
call <SID>hi("Visual",        "", s:gui02, "", s:cterm02, "")
call <SID>hi("VisualNOS",     s:gui08, "", s:cterm08, "", "")
call <SID>hi("WarningMsg",    s:gui08, "", s:cterm08, "", "")
call <SID>hi("WildMenu",      s:gui08, "", s:cterm08, "", "")
call <SID>hi("Title",         s:gui0D, "", s:cterm0D, "", "none")

call <SID>hi("Cursor",        s:gui00, s:gui05, s:cterm00, s:cterm05, "")
call <SID>hi("NonText",       s:gui03, "", s:cterm03, "", "")
call <SID>hi("Normal",        s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <SID>hi("LineNr",        s:gui03, s:gui01, s:cterm03, s:cterm01, "")
call <SID>hi("SignColumn",    s:gui03, s:gui01, s:cterm03, s:cterm01, "")
call <SID>hi("SpecialKey",    s:gui03, "", s:cterm03, "", "")
call <SID>hi("StatusLine",    s:gui04, s:gui02, s:cterm04, s:cterm02, "none")
call <SID>hi("StatusLineNC",  s:gui03, s:gui01, s:cterm03, s:cterm01, "none")
call <SID>hi("VertSplit",     s:gui02, s:gui02, s:cterm02, s:cterm02, "none")
call <SID>hi("ColorColumn",   "", s:gui01, "", s:cterm01, "none")
call <SID>hi("CursorColumn",  "", s:gui01, "", s:cterm01, "none")
call <SID>hi("CursorLine",    "", s:gui01, "", s:cterm01, "none")
call <SID>hi("CursorLineNr",  s:gui03, s:gui01, s:cterm03, s:cterm01, "")
call <SID>hi("PMenu",         s:gui04, s:gui01, s:cterm04, s:cterm01, "none")
call <SID>hi("PMenuSel",      s:gui04, s:gui01, s:cterm04, s:cterm01, "reverse")
call <SID>hi("TabLine",       s:gui03, s:gui01, s:cterm03, s:cterm01, "none")
call <SID>hi("TabLineFill",   s:gui03, s:gui01, s:cterm03, s:cterm01, "none")
call <SID>hi("TabLineSel",    s:gui0B, s:gui01, s:cterm0B, s:cterm01, "none")

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
call <SID>hi("Todo",         s:gui0A, s:gui01, s:cterm0A, s:cterm01, "")
call <SID>hi("Type",         s:gui09, "", s:cterm09, "", "none")
call <SID>hi("Typedef",      s:gui0A, "", s:cterm0A, "", "")

" Spelling Highlighting
call <SID>hi("SpellBad",     "", "NONE", "", "NONE", "undercurl")
call <SID>hi("SpellLocal",   "", "NONE", "", "NONE", "undercurl")
call <SID>hi("SpellCap",     "", "NONE", "", "NONE", "undercurl")
call <SID>hi("SpellRare",    "", "NONE", "", "NONE", "undercurl")

" Additional Diff Highlighting
call <SID>hi("DiffAdd",      s:gui0B, s:gui00, s:cterm0B, s:cterm00, "")
call <SID>hi("DiffChange",   s:gui0D, s:gui00, s:cterm0D, s:cterm00, "")
call <SID>hi("DiffDelete",   s:gui08, s:gui00, s:cterm08, s:cterm00, "")
call <SID>hi("DiffText",     s:gui0D, s:gui00, s:cterm0D, s:cterm00, "")
call <SID>hi("DiffAdded",    s:gui0B, s:gui00, s:cterm0B, s:cterm00, "")
call <SID>hi("DiffFile",     s:gui08, s:gui00, s:cterm08, s:cterm00, "")
call <SID>hi("DiffNewFile",  s:gui0B, s:gui00, s:cterm0B, s:cterm00, "")
call <SID>hi("DiffLine",     s:gui0D, s:gui00, s:cterm0D, s:cterm00, "")
call <SID>hi("DiffRemoved",  s:gui08, s:gui00, s:cterm08, s:cterm00, "")

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
  
" GitGutter Highlighting
call <SID>hi("GitGutterAdd",     s:gui0B, s:gui01, s:cterm0B, s:cterm01, "")
call <SID>hi("GitGutterChange",  s:gui0D, s:gui01, s:cterm0D, s:cterm01, "")
call <SID>hi("GitGutterDelete",  s:gui08, s:gui01, s:cterm08, s:cterm01, "")


" GitGutter Highlighting
call <SID>hi("NERDTreeDirSlash",  s:gui0D, "", s:cterm0D, "", "")
call <SID>hi("NERDTreeExecFile",  s:gui05, "", s:cterm05, "", "")

" remove highlighting function
delf <sid>hi

" Remove Colour Variables
unlet s:gui00 s:gui01 s:gui02 s:gui03  s:gui04  s:gui05  s:gui06  s:gui07  s:gui08  s:gui09 s:gui0A  s:gui0B  s:gui0C  s:gui0D  s:gui0E  s:gui0F
unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm05 s:cterm06 s:cterm07 s:cterm08 s:cterm09 s:cterm0A s:cterm0B s:cterm0C s:cterm0D s:cterm0E s:cterm0F
