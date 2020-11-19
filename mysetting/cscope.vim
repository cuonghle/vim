if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb

    if filereadable(expand("/proj/$MYGROUP/wa/$USER/ncscope.out"))
        cs add /proj/$MYGROUP/wa/$USER/ncscope.out
    elseif filereadable(expand("/proj/$MYGROUP/wa/$USER/cscope.out"))
        cs add /proj/$MYGROUP/wa/$USER/cscope.out
    elseif filereadable("cscope.out")
        cs add cscope.out
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
endif
"cscope add ~/cscope.out

nmap fs :cs find s <C-R>=expand("<cword>")<CR><CR><Tab>
nmap fa :cs find s <C-R>=expand("<cword>")<CR><CR><Tab>
nmap fd :cs find g <C-R>=expand("<cword>")<CR><CR><Tab>
"nmap //t <C-T>

"nmap <C-/>s :cs find s =expand("")
"nmap <C-/>g :cs find g =expand("")
"nmap <C-/>c :cs find c =expand("")
"nmap <C-/>t :cs find t =expand("")
"nmap <C-/>e :cs find e =expand("")
"nmap <C-/>f :cs find f =expand("")
"nmap <C-/>i :cs find i ^=expand("")$
"nmap <C-/>d :cs find d =expand("")

set nohlsearch

