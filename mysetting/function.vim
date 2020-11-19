":map <C-W><C-P> :call TabListToggle()<CR>
":map <silent> <Leader>p <Plug>ToggleProject
":map <F8> :call TabListToggle()<CR>
map \p <Plug>ToggleProject
let mtl=0
" :function! TabListToggle()
" :if (g:mtl==0)
" :  let g:mtl=1
" :  normal \p
" :elseif (g:mtl==1)
" :  let g:mtl=2
" :  normal \p
" :  TlistOpen
" :else
" :  let g:mtl=0
" :  TlistClose
" :endif
" :endfunction

function! TabListToggle()
  if (g:mtl==0)
    let g:mtl=1
    ": call pathogen#runtime_append_all_bundles()
    ": call pathogen#helptags()
    normal \p
  elseif (g:mtl==1)
    let g:mtl=0
    normal \p
  endif
endfunction

"
let col=50
function! FillEnd()
  normal $
  if (col(".") > 50)
    let g:col=70
  endif
  while (col(".") < g:col)
    normal A 
    normal $
  endwhile
endfunction
"
set wildmode=longest,full
"Mix 2 parts of text lines
function! Mix()
  normal `q
  let i = line(".")
  normal `w
  let j = line(".")
  normal `e
  let k = line(".")
  let l = k
  while (i<=j)
    exec "normal ".k."G<CR>"
    normal 0y$
    exec "normal ".i."G$p<CR>"
    let i=i+1
    exec "normal ".k."Gdd<CR>"
  endwhile
endfunction

"highlight a line
map cl :call ToggleCurrentLine()<CR>
"toggle showing current line
let g:cl=0
function! ToggleCurrentLine()
  if (g:cl==0)
    let g:cl=1
    set cursorline
  elseif (g:cl==1)
    let g:cl=0
    set cursorline!
  endif
endfunction

set mouse=i
let lmouse=0
function! ToggleMouseSetting()
  if (g:lmouse==0)
    let g:lmouse=1
    set mouse=a
  else
    let g:lmouse=0
    set mouse=i
  endif
endfunction

"go to current path (open file, or current dir)
function! CdToCurrentPath()
  if (len(expand('%')) == 0)
  else
    cd %:h
  endif
  NERDTree
endfunction


"go to current path (open file, or current dir)
map ,ww <C-W><C-W>
let g:vcscommand_sos_external_diff = "~/bin/sosdiff"
function! ExecuteVCSCommand(command)
  let g:original_buffername = expand("%")

  "close the file that is being processed & open in new tab
  if a:command=="VCSDiff"
    let g:original_buffer = bufnr("%")
    exec a:command
  else
    "bd
    exec "tabnew " . g:original_buffername
    let g:original_buffer = bufnr("%")
    exec a:command
    bufdo if bufname('%')=='' | :bd | endif
    bufdo if expand('%')==g:original_buffername | :e | endif
  endif
  
endfunction

function! OpenFromRootPath()
  let a:f="/proj/$MYGROUP/wa/$USER/" . expand("%")
  let a:g=expand(substitute(substitute(a:f, "\\./", "", "g"), "//", "/", "g"))
  if filereadable(a:g)
    :read `=a:g`
    :exec "cd /proj/$MYGROUP/wa/$USER"
  endif
endfunction

" change space to tab
function! ReTab()
  set tabstop=4
  set noexpandtab
  %retab!
endfunction

" run {cmd} if current file is large size
function! LargeFileCmd(cmd)
  exec 'autocmd BufReadPre * if getfsize(expand("%")) > g:LargeFile*1024*1024 | ' . a:cmd . ' | endif'
endfunction

" run {cmd} if current file is small size
function! SmallFileCmd(cmd)
  exec 'autocmd BufReadPre * if getfsize(expand("%")) <= g:LargeFile*1024*1024 | ' . a:cmd . ' | endif'
endfunction

" the current line is folding or not
function! IsFolded()
  return foldclosed(line('.')) != -1
endfunction
