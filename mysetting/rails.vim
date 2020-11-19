"map Rails plugin
augroup filetypedetect 
   au BufNewFile,BufRead *.rb  set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
augroup end
"autocmd FileType ruby map <F5> :cd /home/quangphan/project/rails/buzzstarter<CR>:Rrunner<CR>
"autocmd FileType ruby map <F5> :w!<CR>:cd /home/quangphan/project/rails/buzzstarter<CR>:Dispatch foreman run rspec %<CR>
"autocmd FileType ruby imap <F5> <ESC>:w!<CR>:cd /home/quangphan/project/rails/buzzstarter<CR>:Dispatch foreman run rspec %<CR>
"autocmd FileType ruby map <F6> :Rake<CR>

"autocmd FileType javascript map <F5> :w!<CR>:cd /home/quangphan/project/rails/buzzstarter<CR>:Dispatch rake spec:javascript RAILS_ENV=test SPEC=%:t:r<CR>
"autocmd FileType javascript imap <F5> <ESC>:w!<CR>:cd /home/quangphan/project/rails/buzzstarter<CR>:Dispatch rake spec:javascript RAILS_ENV=test SPEC=%:t:r<CR>

map ,ec :Econtroller 
map ,ee :Eenvironment 
map ,eh :Ehelper 
map ,em :Emodel 
map ,es :Espec 
map ,ev :Eview 
map ,rg :RgenerateA 
map ,re :Rextract 

"using vim-ruby with supertab
"autocmd FileType ruby let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

imap <S-CR> <CR><CR>end<Esc>-cc

"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
"autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1

"improve autocomplete menu color
"highlight Pmenu ctermbg=238 gui=bold
highlight PMenu gui=bold guibg=#CECECE guifg=#444444

"debugger
"autocmd FileType ruby map <F9> :w<CR>:!ruby -cw %<CR>
"let g:ruby_debugger_debug_mode = 1
"let g:ruby_debugger_spec_path = 'rspec'
"let g:ruby_debugger_default_script = 'rails s'
"let g:ruby_debugger_no_maps = 1

let g:neocomplete#force_overwrite_completefunc = 1
