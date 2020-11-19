let g:ale_emit_conflict_warnings = 0
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 1
"let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_save = 1

let g:ale_linters = {}
let g:ale_linters['javascript'] = ['eslint']
let g:ale_linters['perl'] = ['perl']
let g:ale_linters['tcl'] = ['~/bin/nagelfar112/nagelfar.tcl']
let g:ale_linters['javascript'] = ['ruby']
let g:ale_linters['verilog'] = ['~/bin/verilator_bin']
let g:ale_linters['systemverilog'] = ['~/bin/verilator_bin']


