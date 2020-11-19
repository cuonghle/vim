so ~/.vim/mysetting/filetype.vim
so ~/.vim/mysetting/function.vim
so ~/.vim/mysetting/colorstheme.vim
let g:ale_emit_conflict_warnings = 0

if &diff
  so ~/.vim/mysetting/diff.vim
  nnoremap + :
else
  so ~/.vim/mysetting/neocomplcache.vim
  so ~/.vim/mysetting/fold.vim
  "so ~/.vim/mysetting/unicode.vim
  "so ~/.vim/mysetting/php.vim
  "so ~/.vim/mysetting/web.vim
  "so ~/.vim/mysetting/ack.vim
  so ~/.vim/mysetting/ctrlp.vim
  "so ~/.vim/mysetting/gvim.vim
  "so ~/.vim/mysetting/rails.vim
  "so ~/.vim/mysetting/python.vim
  so ~/.vim/mysetting/cscope.vim
  so ~/.vim/mysetting/surround.vim
  so ~/.vim/mysetting/ultisnips.vim
  so ~/.vim/mysetting/supertab.vim
  "so ~/.vim/mysetting/javascript.vim
  so ~/.vim/mysetting/auto_pairs.vim
  "so ~/.vim/mysetting/emmet.vim
  so ~/.vim/mysetting/nerdcommenter.vim
  "so ~/.vim/mysetting/autotag.vim
  so ~/.vim/mysetting/syntastic.vim
  "so ~/.vim/mysetting/ale.vim
  "so ~/.vim/mysetting/automatic_hdl.vim
  "so ~/.vim/mysetting/rainbow.vim
  so ~/.vim/mysetting/slime.vim
  so ~/.vim/mysetting/verilogemacs.vim
  so ~/.vim/mysetting/snipmate.vim
  so ~/.vim/mysetting/neosnippet.vim
  so ~/.vim/mysetting/map.vim
  "so ~/.vim/mysetting/bookmark.vim
endif
