" ================
" Plugins settings
" ================

""" NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeWinSize =27 
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '.DS_Store']
map <leader>m :NERDTreeToggle<CR>


""" Ack searching
set grepprg=ack             " replace the default grep program with ack
nmap <leader>a <Esc>:Ack!

""" Gundo
map <leader>g :GundoToggle<CR>


""" YankRing
let yankring_history_dir = $HOME."/.vim/tmp/"
if !isdirectory(yankring_history_dir)
    call mkdir(yankring_history_dir, "p")
endif
let g:yankring_history_dir = yankring_history_dir

""" CtrlP
let g:ctrlp_map = '<leader>f'
map <leader>b :CtrlPBuffer<CR>
map <Leader>cm :CtrlPModified<CR>
map <Leader>cM :CtrlPBranch<CR>
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0

" Syntastic
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_python_checkers = ['flake8']

if has('unix')
        let g:syntastic_error_symbol = '★'
        let g:syntastic_style_error_symbol = '>'
        let g:syntastic_warning_symbol = '⚠'
        let g:syntastic_style_warning_symbol = '>'
endif
