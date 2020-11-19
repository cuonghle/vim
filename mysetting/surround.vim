" ----------- vim-surround ----------- "
" cs(change surround)
" ds(delete surround)
" yss(add surround for whole line)
" S(in Virtual mode, as same as yss but the surround is insert at new line
" t=tag iw=inner-work
autocmd FileType php let b:surround_45 = "<? \r ?>"
autocmd FileType ruby let b:surround_45 = "<% \r %>"
let g:surround_{char2nr("p")} = "<p> \r </p>"
let g:surround_{char2nr("d")} = "<div> \r </div>"
let g:surround_{char2nr("r")} = "\\< \r \\>"
autocmd FileType eruby.html let g:surround_{char2nr("c")} = "<!-- \r -->"
map -- yss-

