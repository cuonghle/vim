"Slime
let g:slime_sessionname = $STY
let g:slime_target = "screen"
let g:slime_paste_file = "$HOME/.slime_paste"
func! SlimeConnectOrSend()
  if exists("g:slime_config_done")
    :SlimeSend
    :normal jVg_%
  else
    :SlimeConfig
    let g:slime_config_done=1
    :normal Vg_%
  endif
endfunc

map  <f8> :call SlimeConnectOrSend()<CR>
"""vmap <f8> :call SlimeConnectOrSend()<CR>
"vmap <f8> <c-c><c-c>'>jVg_%

let g:slime_connected = 0
function! GoSlim()
  if g:slime_connected == 0
    call SlimeConnectOrSend()
    let g:slime_connected = 1
  else
    :'<,'>SlimeSend
    :normal '>jVg_%
  endif
endfunction
vmap <f8> :call GoSlim()<CR>

