" Vim syntax file
" Language:	SVF
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" A bunch of useful keywords
syn keyword svfStatement  tell socket subst open eof pwd glob list exec pid
syn keyword svfStatement  auto_load_index time unknown eval lrange fblocked
syn keyword svfStatement  lsearch auto_import gets lappend proc variable llength
syn keyword svfStatement  auto_execok return linsert error catch clock info
syn keyword svfStatement  split array fconfigure concat join lreplace source
syn keyword svfStatement  fcopy global auto_qualify update close cd auto_load
syn keyword svfStatement  file append format read package set binary namespace
syn keyword svfStatement  scan trace seek flush after vwait uplevel lset rename
syn keyword svfStatement  fileevent regexp upvar unset encoding expr load regsub
syn keyword svfStatement interp exit puts incr lindex lsort svfLog string
"Quang added
syn keyword svfStatement analyze report uniquify elaborate dofile setenv version reset add 
syn keyword svfStatement date vpx vpxmode svfmode write
syn match doStatement  "^\s*checkpoint"
syn match doStatement  "^\s*save\s+session"
syn match doStatement  "^\s*compare"
syn match doStatement  "^\s*map"
"Quang end
syn keyword svfLabel		case default
syn keyword svfConditional	if then else elseif switch
syn keyword svfRepeat		while for foreach break continue
syn keyword svftkSwitch	contained	insert create polygon fill outline tag

" WIDGETS
" commands associated with widgets
syn keyword svftkWidgetSwitch contained background highlightbackground insertontime cget
syn keyword svftkWidgetSwitch contained selectborderwidth borderwidth highlightcolor insertwidth
syn keyword svftkWidgetSwitch contained selectforeground cursor highlightthickness padx setgrid
syn keyword svftkWidgetSwitch contained exportselection insertbackground pady takefocus
syn keyword svftkWidgetSwitch contained font insertborderwidth relief xscrollcommand
syn keyword svftkWidgetSwitch contained foreground insertofftime selectbackground yscrollcommand
syn keyword svftkWidgetSwitch contained height spacing1 spacing2 spacing3
syn keyword svftkWidgetSwitch contained state tabs width wrap
" button
syn keyword svftkWidgetSwitch contained command default
" canvas
syn keyword svftkWidgetSwitch contained closeenough confine scrollregion xscrollincrement yscrollincrement orient
" checkbutton, radiobutton
syn keyword svftkWidgetSwitch contained indicatoron offvalue onvalue selectcolor selectimage state variable
" entry, frame
syn keyword svftkWidgetSwitch contained show class colormap container visual
" listbox, menu
syn keyword svftkWidgetSwitch contained selectmode postcommand selectcolor tearoff tearoffcommand title type
" menubutton, message
syn keyword svftkWidgetSwitch contained direction aspect justify
" scale
syn keyword svftkWidgetSwitch contained bigincrement digits from length resolution showvalue sliderlength sliderrelief tickinterval to
" scrollbar
syn keyword svftkWidgetSwitch contained activerelief elementborderwidth
" image
syn keyword svftkWidgetSwitch contained delete names types create
" variable reference
	" ::optional::namespaces
syn match svfVarRef "$\(\(::\)\?\([[:alnum:]_.]*::\)*\)\a[a-zA-Z0-9_]*"
	" ${...} may contain any character except '}'
syn match svfVarRef "${[^}]*}"
"Quang added
syn match doOption "-[^\ ]*"
syn match doOption "lec\|setup"
"Quang added end
" menu, mane add
syn keyword svftkWidgetSwitch contained active end last none cascade checkbutton command radiobutton separator
syn keyword svftkWidgetSwitch contained activebackground actveforeground accelerator background bitmap columnbreak
syn keyword svftkWidgetSwitch contained font foreground hidemargin image indicatoron label menu offvalue onvalue
syn keyword svftkWidgetSwitch contained selectcolor selectimage state underline value variable
syn keyword svftkWidgetSwitch contained add clone configure delete entrycget entryconfigure index insert invoke
syn keyword svftkWidgetSwitch contained post postcascade type unpost yposition activate
"syn keyword svftkWidgetSwitch contained
"syn match svftkWidgetSwitch contained
syn region svftkWidget matchgroup=svftkWidgetColor start="\<button\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1 contains=svfLineContinue,svftkWidgetSwitch,svfString,svftkSwitch,svfNumber,svfVarRef
syn region svftkWidget matchgroup=svftkWidgetColor start="\<scale\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkWidgetSwitch,svfString,svftkSwitch,svfNumber,svfVarRef

syn region svftkWidget matchgroup=svftkWidgetColor start="\<canvas\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkWidgetSwitch,svfString,svftkSwitch,svfNumber,svfVarRef
syn region svftkWidget matchgroup=svftkWidgetColor start="\<checkbutton\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkWidgetSwitch,svfString,svftkSwitch,svfNumber,svfVarRef
syn region svftkWidget matchgroup=svftkWidgetColor start="\<entry\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkWidgetSwitch,svfString,svftkSwitch,svfNumber,svfVarRef
syn region svftkWidget matchgroup=svftkWidgetColor start="\<frame\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkWidgetSwitch,svfString,svftkSwitch,svfNumber,svfVarRef
syn region svftkWidget matchgroup=svftkWidgetColor start="\<image\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkWidgetSwitch,svfString,svftkSwitch,svfNumber,svfVarRef
syn region svftkWidget matchgroup=svftkWidgetColor start="\<listbox\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkWidgetSwitch,svfString,svftkSwitch,svfNumber,svfVarRef
syn region svftkWidget matchgroup=svftkWidgetColor start="\<menubutton\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkWidgetSwitch,svfString,svftkSwitch,svfNumber,svfVarRef
syn region svftkWidget matchgroup=svftkWidgetColor start="\<message\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkWidgetSwitch,svfString,svftkSwitch,svfNumber,svfVarRef
syn region svftkWidget matchgroup=svftkWidgetColor start="\<radiobutton\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1 contains=svfLineContinue,svftkWidgetSwitch,svfString,svftkSwitch,svfNumber,svfVarRef
syn region svftkWidget matchgroup=svftkWidgetColor start="\<scrollbar\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkWidgetSwitch,svfString,svftkSwitch,svfNumber,svfVarRef
" These words are dual purpose.
" match switches
"syn match svftkWidgetSwitch contained "-text"hs=s+1
syn match svftkWidgetSwitch contained "-text\(var\)\?"hs=s+1
syn match svftkWidgetSwitch contained "-menu"hs=s+1
syn match svftkWidgetSwitch contained "-label"hs=s+1
" match commands - 2 lines for pretty match.
"variable
" Special case - If a number follows a variable region, it must be at the end of
" the pattern, by definition. Therefore, (1) either include a number as the region
" end and exclude svfNumber from the contains list, or (2) make variable
" keepend. As (1) would put variable out of step with everything else, use (2).
syn region svftkCommand matchgroup=svftkCommandColor start="^\<variable\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svfString,svfNumber,svfVarRef,svftkCommand
syn region svftkCommand matchgroup=svftkCommandColor start="\s\<variable\>\|\[\<variable\>"hs=s+1 matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svfString,svfNumber,svfVarRef,svftkCommand
" menu
syn region svftkWidget matchgroup=svftkWidgetColor start="^\<menu\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkWidgetSwitch,svfString,svftkSwitch,svfNumber,svfVarRef
syn region svftkWidget matchgroup=svftkWidgetColor start="\s\<menu\>\|\[\<menu\>"hs=s+1 matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkWidgetSwitch,svfString,svftkSwitch,svfNumber,svfVarRef
" label
syn region svftkWidget matchgroup=svftkWidgetColor start="^\<label\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkWidgetSwitch,svfString,svftkSwitch,svfNumber,svfVarRef
syn region svftkWidget matchgroup=svftkWidgetColor start="\s\<label\>\|\[\<label\>"hs=s+1 matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkWidgetSwitch,svfString,svftkSwitch,svfNumber,svfVarRef
" text
syn region svftkWidget matchgroup=svftkWidgetColor start="^\<text\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkWidget,svftkWidgetSwitch,svftkSwitch,svfNumber,svfVarRef,svfString
syn region svftkWidget matchgroup=svftkWidgetColor start="\s\<text\>\|\[\<text\>"hs=s+1 matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkWidget,svftkWidgetSwitch,svfString,svftkSwitch,svfNumber,svfVarRef

" This isn't contained (I don't think) so it's OK to just associate with the Color group.
" TODO: This could be wrong.
syn keyword svftkWidgetColor	toplevel


syn region svftkPackConf matchgroup=svftkPackConfColor start="\<configure\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkWidgetSwitch,svfString,svftkSwitch,svftkPackConfSwitch,svfNumber,svfVarRef keepend
syn region svftkPackConf matchgroup=svftkPackConfColor start="\<cget\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"me=e-1  contains=svfLineContinue,svftkWidgetSwitch,svfString,svftkSwitch,svftkPackConfSwitch,svfNumber,svfVarRef


" NAMESPACE
" commands associated with namespace
syn keyword svftkNamespaceSwitch contained children code current delete eval
syn keyword svftkNamespaceSwitch contained export forget import inscope origin
syn keyword svftkNamespaceSwitch contained parent qualifiers tail which command variable
syn region svftkCommand matchgroup=svftkCommandColor start="\<namespace\>" matchgroup=NONE skip="^\s*$" end="{\|}\|]\|\"\|[^\\]*\s*$"me=e-1  contains=svfLineContinue,svftkNamespaceSwitch

" EXPR
" commands associated with expr
syn keyword svftkMaths	contained	acos	cos	hypot	sinh
syn keyword svftkMaths	contained	asin	cosh	log	sqrt
syn keyword svftkMaths	contained	atan	exp	log10	tan
syn keyword svftkMaths	contained	atan2	floor	pow	tanh
syn keyword svftkMaths	contained	ceil	fmod	sin
syn region svftkCommand matchgroup=svftkCommandColor start="\<expr\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"me=e-1  contains=svfLineContinue,svftkMaths,svfNumber,svfVarRef,svfString,svftlWidgetSwitch,svftkCommand,svftkPackConf

" format
syn region svftkCommand matchgroup=svftkCommandColor start="\<format\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"me=e-1  contains=svfLineContinue,svftkMaths,svfNumber,svfVarRef,svfString,svftlWidgetSwitch,svftkCommand,svftkPackConf

" PACK
" commands associated with pack
syn keyword svftkPackSwitch	contained	forget info propogate slaves
syn keyword svftkPackConfSwitch	contained	after anchor before expand fill in ipadx ipady padx pady side
syn region svftkCommand matchgroup=svftkCommandColor start="\<pack\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkPackSwitch,svftkPackConf,svftkPackConfSwitch,svfNumber,svfVarRef,svfString,svftkCommand keepend

" STRING
" commands associated with string
"Quang:syn keyword svftkStringSwitch	contained	compare first index last length match range tolower toupper trim trimleft trimright wordstart wordend
syn keyword svftkStringSwitch	contained	first index last length match range tolower toupper trim trimleft trimright wordstart wordend
syn region svftkCommand matchgroup=svftkCommandColor start="\<string\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkStringSwitch,svfNumber,svfVarRef,svfString,svftkCommand

" ARRAY
" commands associated with array
syn keyword svftkArraySwitch	contained	anymore donesearch exists get names nextelement size startsearch set
" match from command name to ] or EOL
syn region svftkCommand matchgroup=svftkCommandColor start="\<array\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkArraySwitch,svfNumber,svfVarRef,svfString,svftkCommand

" LSORT
" switches for lsort
syn keyword svftkLsortSwitch	contained	ascii dictionary integer real command increasing decreasing index
" match from command name to ] or EOL
syn region svftkCommand matchgroup=svftkCommandColor start="\<lsort\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=svfLineContinue,svftkLsortSwitch,svfNumber,svfVarRef,svfString,svftkCommand

syn keyword svfTodo contained	TODO


" String and Character contstants
" Highlight special characters (those which have a backslash) differently
syn match   svfSpecial contained "\\\d\d\d\=\|\\."
" A string needs the skip argument as it may legitimately contain \".
" Match at start of line
syn region  svfString		  start=+^"+ end=+"+ contains=svfSpecial skip=+\\\\\|\\"+
"Match all other legal strings.
syn region  svfString		  start=+[^\\]"+ms=s+1  end=+"+ contains=svfSpecial skip=+\\\\\|\\"+

syn match   svfLineContinue "\\\s*$"

"integer number, or floating point number without a dot and with "f".
syn case ignore
syn match  svfNumber		"\<\d\+\(u\=l\=\|lu\|f\)\>"
"floating point number, with dot, optional exponent
syn match  svfNumber		"\<\d\+\.\d*\(e[-+]\=\d\+\)\=[fl]\=\>"
"floating point number, starting with a dot, optional exponent
syn match  svfNumber		"\.\d\+\(e[-+]\=\d\+\)\=[fl]\=\>"
"floating point number, without dot, with exponent
syn match  svfNumber		"\<\d\+e[-+]\=\d\+[fl]\=\>"
"hex number
syn match  svfNumber		"0x[0-9a-f]\+\(u\=l\=\|lu\)\>"
"syn match  svfIdentifier	"\<[a-z_][a-z0-9_]*\>"
syn case match

syn region  svfComment		start="^\s*!" skip="\\$" end="$" contains=svfTodo
syn region  svfComment		start=/;\s*!/hs=s+1 skip="\\$" end="$" contains=svfTodo

"syn sync ccomment svfComment

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_svf_syntax_inits")
  if version < 508
    let did_svf_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink svftkSwitch		Special
  HiLink svfLabel		Label
  HiLink svfConditional		Conditional
  HiLink svfRepeat		Repeat
  HiLink svfNumber		Number
  HiLink svfError		Error
  HiLink svfStatement		Statement
  "HiLink svfStatementColor	Statement
  HiLink svfString		String
  HiLink svfComment		Comment
  HiLink svfSpecial		Special
  HiLink svfTodo		Todo
  " Below here are the commands and their options.
  HiLink svftkCommandColor	Statement
  HiLink svftkWidgetColor	Structure
  HiLink svfLineContinue	WarningMsg
  HiLink svftkStringSwitch	Special
  HiLink svftkArraySwitch	Special
  HiLink svftkLsortSwitch	Special
  HiLink svftkPackSwitch	Special
  HiLink svftkPackConfSwitch	Special
  HiLink svftkMaths		Special
  HiLink svftkNamespaceSwitch	Special
  HiLink svftkWidgetSwitch	Special
  HiLink svftkPackConfColor	Identifier
  "HiLink svftkLsort		Statement
  HiLink svfVarRef		Identifier
  "Quang added
  HiLink doOption		Special
  HiLink doStatement		Statement
  "Quang added end

  delcommand HiLink
endif

let b:current_syntax = "svf"

" vim: ts=8
