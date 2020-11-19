""set runtimepath+=~/.vim/bundle/ultisnips


"function! CleverTab()
"  if pumvisible()
"    return "\<C-N>"
"  endif
"  if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
"    return "\<Tab>"
"  elseif exists('&omnifunc') && &omnifunc != ''
"    return "\<C-X>\<C-O>"
"  else
"    return "\<C-N>"
"  endif
"endfunction

"let g:ulti_expand_or_jump_res = 0 "default value, just set once                                                                                                                      
"function! Ulti_ExpandOrJump_and_getRes()                                                                                                                                             
"  call UltiSnips_ExpandSnippetOrJump()                                                                                                                                               
"  return g:ulti_expand_or_jump_res                                                                                                                                                   
"endfunction
""inoremap <NL> <C-R>=(Ulti_ExpandOrJump_and_getRes() > 0)?"":IMAP_Jumpfunc('', 0)<CR>
"inoremap <Tab> <C-R>=(Ulti_ExpandOrJump_and_getRes() > 0) ? "": CleverTab()<CR>
