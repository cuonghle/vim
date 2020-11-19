"CTRLP plugin
"map ff :CtrlP ~/public_html<CR>
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_root_markers = ['svn', 'design', 'mtvl_env', 'dv', 'quangp', 'wa', 'linux']
"map ff :CtrlP /proj/$MYGROUP/wa/$USER/design<CR>
map ff :CtrlP<CR>
map fb :CtrlPBuffer<CR>
map fm :CtrlPMRU<CR>
map ft :CtrlPTag<CR>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,^\..*
let g:ctrlp_custom_ignore = '\v[\/][\.](git|hg|svn)$'
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"  \ 'file': '\v\.(exe|so|dll|png|jpg)$',
"  \ 'link': 'some_bad_symbolic_links',
"  \ }

let g:ctrlp_user_command = 'find %s -type f -or -type l | grep -vP "tmp|coverage|.SOS|.flexlmrc|.Xauthority|\.log"'
let g:ctrlp_custom_ignore = '\v[\/]\.(keep|png|jpg|zip|swp|log)$'

let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
"let g:ctrlp_clear_cache_on_exit = 1
if ( "$MYGROUP"!= "" )
  if ( matchstr(getcwd(), "/sos2") != "" )
    let g:ctrlp_cache_dir = '/proj/$MYGROUP/wa/$USER/sos2/.cache/ctrlp'
  else
    let g:ctrlp_cache_dir = '/proj/$MYGROUP/wa/$USER/.cache/ctrlp'
  end
  set tags+=/proj/$MYGROUP/wa/$USER/.dv_tags
  set tags+=/proj/$MYGROUP/wa/$USER/.libset_tags
else
  let g:ctrlp_cache_dir = '~/.cache/ctrlp'
end

function! Refresh_repo()
  if ( "$MYGROUP"!="" )
    if ( matchstr(getcwd(), "/sos2") != "" )
      :!rm -rf /proj/$MYGROUP/wa/$USER/sos2/.cache/ctrlp
    else
      :!rm -rf /proj/$MYGROUP/wa/$USER/.cache/ctrlp
    end
  else
    :!rm -rf ~/.cache/ctrlp
  end
endfunction

map <f5> :call Refresh_repo()<CR>

nmap <c-]> :cstag <C-R>=expand("<cword>")<CR><CR>
nmap fn :cstag <C-R>=expand("<cword>")<CR><CR>

