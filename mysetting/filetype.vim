"do not use it whenever is sourced by filetype.vim
"if exists("did_load_filetypes")
"    finish
"endif
augroup filetypedetect
    au! BufRead *   if getline(1) =~ 'csh'       | 
                \       setf csh                 | 
                \   elseif getline(1) =~ 'ruby'  | 
                \       setf ruby                | 
                \   elseif getline(1) =~ 'tcl'   | 
                \       setf tcl                 | 
                \   elseif getline(1) =~ 'wish'  | 
                \       setf tcl                 | 
                \   endif

    au! BufNewFile,BufRead *.html.erb setf ruby.html
    au! BufNewFile,BufRead *.js.erb   setf javascript.ruby
    au! BufNewFile,BufRead *.r.erb    setf r.ruby
    au! BufNewFile,BufRead *.fish     setf csh
    au! BufNewFile,BufRead *.rabl     setf ruby
    au! BufNewFile,BufRead *.bv       setf systemverilog
    au! BufNewFile,BufRead *.sv       setf systemverilog
    au! BufNewFile,BufRead *.gv       setf verilog
    au! BufNewFile,BufRead *.vb       setf verilog
    au! BufNewFile,BufRead *.netlist_final       setf verilog
    au! BufNewFile,BufRead *.coffee   setf coffee
    au! BufNewFile,BufRead *.lst      setf verilog
    au! BufNewFile,BufRead *.v_postLV      setf verilog
    au! BufNewFile,BufRead *.scr      setf tcl
    au! BufNewFile,BufRead *.proc     setf tcl
    au! BufNewFile,BufRead *.tcl*     setf tcl
    au! BufNewFile,BufRead *.pt       setf tcl
    au! BufNewFile,BufRead *.sdc      setf tcl
    "au! BufNewFile,BufRead *.do       syn match doComment "//.*" | hi link doComment Comment | let g:NERDCustomDelimiters = { 'do': { 'left': '//' } } | setf do
    au! BufNewFile,BufRead *.cpf      setf csh
    au! BufNewFile,BufRead *.svf      setf svf
    au! BufNewFile,BufRead *.do       setf do

    ""autocmd! BufNewFile,BufRead *_spec.js let b:dispatch = 'jasmine-node %'
    
    ""mark a tag blocks in html
    "au! BufNewFile,BufRead *.html.erb map vv <c-y>d
    "au! BufNewFile,BufRead *.html.erb imap vv <c-y>d
augroup END

