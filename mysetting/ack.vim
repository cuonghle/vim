"grep php/css/js
"map ,fp :tabnew<CR>:Ack --php  -G 
"map ,fc :tabnew<CR>:Ack --css  -G 
"map ,fj :tabnew<CR>:Ack --js  -G 
""map ,fa :tabnew<CR>:Ack -G  
"map ,fa :Ack! -G  
"map ,fw "zyiw:Ack! -G . <c-r>z<CR>
map ,fa :Ack! 
map ,fw "zyiw:Ack! <c-r>z<CR>

"todo by ack
"command! TODO :AckWindow "FIXME\|TODO"
map fa  :Ack! --ignore-dir verilogout --ignore-dir logs --ignore-dir reports --ignore-dir delivery --ignore-dir db --ignore-dir backup  "FIXME\|TODO"<CR>

"autocmd BufRead  * if (&buftype=='' && expand("%")!="" && getfsize(expand("%"))<g:LargeFile*1024*1024) | exec "AckWindow \"FIXME\|TODO\"" | exec "cw"  | endif
""autocmd BufEnter * if (&buftype=='' && expand("%")!="" && getfsize(expand("%"))<g:LargeFile*1024*1024) | exec "cw" | endif
"autocmd BufEnter * if (&buftype!='quickfix') | exec "cw" | endif

let g:ack_default_options = " -s -H --nocolor --nogroup --column --smart-case --follow"
let g:ackprg = "/user/quangp/bin/ack " . g:ack_default_options
