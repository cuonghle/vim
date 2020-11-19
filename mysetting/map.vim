let mapleader = ","
"let mapleader = "\<space>"
nnoremap <Leader>w :w<CR>
nmap <Leader><Leader> V
"
"search a region
vmap K <Plug>(expand_region_expand)
map K <Plug>(expand_region_expand)
vmap <c-k> <Plug>(expand_region_shrink)
map <c-k> <Plug>(expand_region_shrink)

"should use virtual-mode
map <C-W><C-D> :'q,'wd<CR>
map <C-W><C-Y> :'q,'wy<CR>

map <leader>ll :normal @e<CR>                           | "loop for a @e
map <leader>mm :call ToggleMouseSetting()<CR>           | "toggle mouse

"alignment
map <leader>=  :Align \s=\s<CR>
map <leader>aa  :Align 
map <leader>a<space> :call AlignMaps#Vis("tsp")<CR>
map <leader>as :call AlignMaps#Vis("tsp")<CR>

"insert ';' or ','
map  ;; mt])A;<ESC>`t
imap ;; <ESC>mt])A;<ESC>`ta
"map ,, mt]}A,<ESC>`t
"imap ,, <ESC>mt]}A,<ESC>`ta

"session
:nmap <leader>ss :mksession! ~/.vim/session/
:nmap <leader>os :so ~/.vim/session/

"--- TAB setting
"quickfix use current tab if exist
"set switchbuf=usetab,newtab
"set switchbuf=usetab
"map ,nt :set switchbuf=usetab,newtab<CR>         | "new tab
"map ,st :set switchbuf=usetab<CR>               | "same tab

"mapping
:nmap gf <c-w>gf
:nmap <c-l> :tabn<CR>
:nmap <c-h> :tabp<CR>
:nmap <leader>ta :tab sball<CR>
:map tn :tabnew 

"do not refresh at 1st & last line
noremap <expr> k ((line('.')==1)?'':'k')
noremap <expr> j ((line('.')==line('$'))?'':'j')

"to avoid "flashing" when there is nothing to undo/redo
noremap u :earlier<CR>
noremap <c-r> :later<CR>

"it was mapped to >> as default
":map >  <c-w>>
":map <  <c-w><

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
"
" auto indent
"map ,= gg=G

map <leader>b :'<,'>normal 

"NERDTree plugin
map <leader>nt :call CdToCurrentPath()<CR><c-w><c-w>:NERDTreeFind<CR>
map <leader>cd :lcd %:p:h<CR>

"map GIT (vcscommand plugin)

map ,gd :call ExecuteVCSCommand("VCSDiff --force")<CR>
map <leader>gd :call ExecuteVCSCommand("VCSDiff")<CR>
map <leader>gs :call ExecuteVCSCommand("VCSShow")<CR>
map <leader>gc :call ExecuteVCSCommand("VCSCreate")<CR>:bd<CR>:e<CR>
"map <leader>gc :!soscmd co -C %<CR>
map <leader>go :call ExecuteVCSCommand("VCSCheckout")<CR>
map <leader>gi :call ExecuteVCSCommand("VCSCheckin")<CR>
map <leader>gl :call ExecuteVCSCommand("VCSLog")<CR>
map <leader>gb :call ExecuteVCSCommand("VCSBlame")<CR>
let g:VCSCommandVCSTypePreference = "soscmd svn git"

map <leader>ff "zyiw/\<<c-r>z\>\\|\<module\>\\|\<endmodule\>\C<CR>
map <leader>fb "zyiw?\<<c-r>z\>\\|module\>\C<CR>

map <leader>gf :Gitv!<CR>

""auto close
"inoremap {      {}<Left>
"inoremap {<CR>  {<CR>}<Esc>O
"inoremap {{     {
"inoremap {}     {}
"inoremap [      []<Left>
"inoremap []     []<Left>

"map <c-j> :normal $V%,cc<CR>:normal $%<CR>
"map <c-k> :normal $V%,c <CR>
"map <c-J> :normal V%,cc<CR>:normal $%<CR>
"map <c-K> :normal V%,c <CR>
map == =%
map <leader>yj :normal V%y<CR>
map <leader>dj :normal V%d<CR>
map ''  ysiw'
map ""  ysiw"
"map vv  [mV]M
"map v{  [{V%

map <F2> :update<CR>
imap <F2> <ESC>:update<CR>

noremap <f5> :e<CR>

"increase/decrease number
map <f9> <c-x>
map <f10> <c-a>

"set iskeyword+=/
map ,gg mq:echo system("egrep -n --color \'" . expand("<cWORD>") . "\' " . expand("%") . " \| head ")<CR>
map ,gw mq:echo system("egrep -n --color \'" . expand("<cword>") . "\' " . expand("%") . " \| head ")<CR>
map ,ga :!egrep -n --color  %<LEFT><LEFT>

"toggle wrap
:nmap  <leader>ww :set invwrap<CR>
:nmap  <leader>nn :set invnu<CR>
