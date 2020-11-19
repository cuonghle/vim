"for php-document
:inoremap <c-w><c-p> <esc>:call PhpDocSingle()<cr>
:nnoremap <c-w><c-p> :call PhpDocSingle()<cr>
:vnoremap <c-w><c-p> :call PhpDocRange()<cr> 

"vim debugger 
"autocmd FileType php map <F9> :!php -l %<CR>
""xdebug window resize 
"function! WindowResizeDebug()
"  normal ,mbc
"  exec "normal 100\<C-W>|"
"endfunction
"map ,db :call WindowResizeDebug()<CR>
" debug php 
"map ,db :!php -l %<CR>

" === php folding plugin
"disable folding
set nofoldenable
" map ,fo let g:DisableAutoPHPFolding=0<CR><Esc>:EnableFastPHPFolds<Cr>
map fo :normal zR<CR>
map fc :normal zM<CR>

""minibufexpl
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplMapCTabSwitchWindows = 1
"
" phpDocumentor
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 
