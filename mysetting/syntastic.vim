"syntax check
" On by default, turn it off for html
"let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['perl', 'tcl'], 'passive_filetypes': ['html'] }
"let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [], 'passive_filetypes': [] }
"let g:syntastic_javascript_checkers = ['jshint']

let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl']

let g:syntastic_tcl_nagelfar_exec = '~/bin/nagelfar112/nagelfar.tcl'
"deprecated parameter
"let g:syntastic_quiet_warnings = 1
"let g:syntastic_tcl_nagelfar_quiet_messages = { "!level": "warnings", "type": "style", "regex": ["Unknown command", "alias"] }
let g:syntastic_tcl_nagelfar_quiet_messages = { "!level": "errors", "type": "style", "regex":  ["alias"]}

let g:syntastic_html_tidy_ignore_errors = ["trimming empty"]

let g:syntastic_c_checkers = ["gcc"]
let g:syntastic_c_gcc_quiet_messages = { "!level": "errors", "type": "style", "regex":  ["PERIFERAL_ID", "fw_function_table", "svdpi.h", "fw_call.h"]}

let g:syntastic_enable_ruby_checker = 1
"let g:syntastic_perl_checkers = ['mri']
"let g:syntastic_ruby_mri_exec = '/usr/bin/ruby'
let g:syntastic_ruby_exec = 'ruby'
"let g:syntastic_ruby_exec = '/usr/bin/ruby'

let g:syntastic_error_symbol = 'X'
let g:syntastic_warning_symbol = '!'
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=0
let g:syntastic_echo_current_error=1
let g:syntastic_enable_balloons=1
highlight SyntasticErrorLine guibg=#2f0000

"ignore LEC dofile
let g:syntastic_ignore_files = [".*.do"]


let g:syntastic_enable_verilog_checker = 1
let g:syntastic_verilog_checkers = ['verilator']
let g:syntastic_verilog_verilator_exec = '~/bin/verilator_bin'
let g:syntastic_verilog_verilator_quiet_messages = { "regex":  ["unknown PLI call", "Verilog 1995 reserved word not implemented:", "unexpected '@'", "Ignoring delay"]}
let g:syntastic_enable_systemverilog_checker = 1
let g:syntastic_systemverilog_checkers = ['verilator']
let g:syntastic_systemverilog_verilator_exec = '~/bin/verilator_bin'
