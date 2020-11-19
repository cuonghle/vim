function! Refresh_repo()
  :!taggen ; rm -rf ~/.cache/ctrlp/*
endfunction

map <f5> :call Refresh_repo()<CR>
