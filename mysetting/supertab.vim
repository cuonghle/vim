"set completeopt+=longest
set completeopt=longest,menu,preview
set wildmode=longest,full
let g:SuperTabLongestEnhanced = 1
let g:SuperTabLongestHighlight = 0
let g:SuperTabCrMapping = 0

let g:SuperTabDefaultCompletionType = "context"
function! MyTagContext()
  if &filetype =~ "tcsh"
    return "\<c-x>\<c-o>"
  endif
  if &filetype =~ "tcl"
    return "\<c-x>\<c-o>"
  endif
  if &filetype =~ "perl"
    return "\<c-x>\<c-o>"
  endif
  if &filetype =~ "verilog.systemverilog"
    return "\<c-x>\<c-o>"
  endif
  if &filetype =~ "verilog"
    return "\<c-x>\<c-o>"
    "return "\<c-x>\<c-n>"
  endif
  if &filetype == "ruby"
    return "\<c-n>"
  endif
  if filereadable(expand('%:p:h') . '/tags')
    return "\<c-x>\<c-]>"
  endif
endfunction
let g:SuperTabCompletionContexts = ['MyTagContext', 's:ContextText', 's:ContextDiscover']

"let g:SuperTabClosePreviewOnPopupClose=1
"let g:SuperTabRetainCompletionDuration='completion'
"set infercase 

:highlight Pmenu guibg=brown gui=bold
:highlight Pmenu ctermbg=238 gui=bold

inoremap <expr><TAB>      pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <C-j>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k>     pumvisible() ? "\<C-p>" : "\<Up>"

"inoremap <expr><CR> neocomplete#close_popup() . "\<CR>"
"inoremap <expr><CR>  pumvisible() ? neocomplete#close_popup() : "\<CR>"
"imap <CR>    pumvisible() ? neocomplcache#close_popup() : "\<CR>"
":inoremap <expr> <CR> pumvisible() ? "\<CR> " : "\<CR>"
