set fileformat=unix 

"set expandtab        " use <space> char replace <tab> char 
"set shiftwidth=4 
"set tabstop=4 
set ruler 

"set smartindent 
"set incsearch 
"set hlsearch 

map <F4> :RtlTree<CR> 
map <F7> :call AutoArg()<CR> 
map <F8> :call AutoDef()<CR> 
map <F6> <C-w><C-w> 

"" save cursor position at exit edit file 
"autocmd BufReadPost * 
"      \ if (line("'\"") > 0 && line("'\"") <= line("$") | 
"      \    exe "normal g`\"" | 
"      \ endif "'")"'"))
