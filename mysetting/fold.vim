"au BufReadPre * setlocal foldmethod=syntax
"call SmallFileCmd('setlocal foldmethod=indent')
set foldlevelstart=0
"let tcl_fold=1                " TCL
"let javaScript_fold=1         " JavaScript
"let perl_fold=1               " Perl
"let php_folding=1             " PHP
"let r_syntax_folding=1        " R
"let ruby_fold=1               " Ruby
"let sh_fold_enabled=1         " sh
"let vimsyn_folding='af'       " Vim script
"let xml_syntax_folding=1      " XML
"nnoremap <Space><Space> zR
"nnoremap <expr> <Space><Space> &foldlevel==0 ? 'zR' : 'zM'

nnoremap <expr> <Space> IsFolded() ? 'zO' : 'zC'
