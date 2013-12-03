" ================
" Python settings
" ================

" python.vim
let python_highlight_all = 1

" pep8
autocmd FileType python setlocal textwidth=80
autocmd FileType python setlocal colorcolumn=+1

" cut spaces from line end
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

" virtualenv
let g:virtualenv_auto_activate = 1
let g:virtualenv_stl_format = '(%n)'

" flake
autocmd FileType python map <buffer> <leader>8 :SyntasticCheck<CR>
au BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
autocmd FileType python sign define dummy
autocmd FileType python execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
" jedi settings
let g:jedi#auto_initialization = 1
let g:jedi#completions_enable = 1
autocmd FileType python setlocal completeopt-=preview
let g:jedi#use_splits_not_buffers = "right"
let g:jedi#popup_on_dot = 1
let g:jedi#usages_command = "<leader>u"

" SuperTab
let g:SuperTabDefaultCompletionType = "context"

" run py.test's
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
nmap <silent><Leader>tc <Esc>:Pytest class<CR>
nmap <silent><Leader>tm <Esc>:Pytest method<CR>
nmap <silent><Leader>tn <Esc>:Pytest next<CR>
nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
nmap <silent><Leader>te <Esc>:Pytest error<CR>
