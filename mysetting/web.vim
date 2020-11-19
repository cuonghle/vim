":filetype on
":filetype plugin indent on

""set filetype
":au BufRead,BufNewFile *.js		setfiletype javascript
":au BufRead,BufNewFile *.php		setfiletype php
":au BufRead,BufNewFile *.php		setfiletype php

"Color scheme and font
"autocmd FileType javascript,html,css,php colorscheme railscasts
"autocmd FileType javascript,html,css,php set gfn=Monaco\ 10

""Hightlight current line
"autocmd FileType javascript,html,css,php autocmd InsertLeave * set nocursorline
"autocmd FileType javascript,html,css,php autocmd InsertEnter * set cursorline
"autocmd FileType javascript,html,css,php highlight CursorLine ctermbg=40 cterm=NONE

"Indentation
autocmd FileType javascript,html,css,php set ai
autocmd FileType javascript,html,css,php set sw=2
autocmd FileType javascript,html,css,php set ts=2
autocmd FileType javascript,html,css,php set sts=2
autocmd FileType javascript,css,php set textwidth=79
:set smartindent


"Enable autocompletion
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"autocmd BufRead,BufNewFile *.txt setlocal textwidth=60

""Enable line numbers
"autocmd FileType javascript,css,php set number

