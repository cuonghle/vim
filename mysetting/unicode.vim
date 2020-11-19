if has("multi_byte")    " if not, we need to recompile
  if &enc !~? '^u'      " if the locale 'encoding' starts with u or U
                        " then Unicode is already set
    if &tenc == ''
      let &tenc = &enc  " save the keyboard charset
    endif
    set enc=utf-8       " to support Unicode fully, we need to be able
                        " to represent all Unicode codepoints in memory
  endif
  set fencs=ucs-bom,utf-8,latin1
  setg bomb             " default for new Unicode files
  setg fenc=latin1      " default for files created from scratch
else
  echomsg 'Warning: Multibyte support is not compiled-in.'
endif
