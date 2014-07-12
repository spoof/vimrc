" ================
" Plugins settings
" ================

" Vitality
let g:vitality_fix_focus = 0

" NERDTree
let NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 27
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '.DS_Store']
map <leader>m :NERDTreeToggle<CR>

" NERDTree tabs
"map <Leader>m <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_autoclose = 0

" Ag searching
set grepprg=ag             " replace the default grep program with Ag
nmap <leader>a <Esc>:Ag!

" Gundo
nmap <leader>u :GundoToggle<CR>

" open on the right so as not to compete with the nerdtree
let g:gundo_right = 1
"
" " a little wider for wider screens
let g:gundo_width = 60

" YankRing
let yankring_history_dir = $HOME."/.vim/tmp/"
if !isdirectory(yankring_history_dir)
    call mkdir(yankring_history_dir, "p")
endif
let g:yankring_history_dir = yankring_history_dir
nnoremap ,yr :YRShow<CR>
nnoremap C-y :YRShow<CR>

" CtrlP
let g:ctrlp_map = '<leader>f'
map <leader>b :CtrlPBuffer<CR>
map <Leader>cm :CtrlPModified<CR>
map <Leader>cM :CtrlPBranch<CR>
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store|\.pyc$'
\}
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'


" Syntastic
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_python_checkers = ['flake8']

function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction
nnoremap <silent> <leader>e :<C-u>call ToggleErrors()<CR>

if has('unix')
        let g:syntastic_error_symbol = '★'
        let g:syntastic_style_error_symbol = '>'
        let g:syntastic_warning_symbol = '⚠'
        let g:syntastic_style_warning_symbol = '>'
endif

" Gist
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
"let g:gist_open_browser_after_post = 1
let g:gist_post_private = 1

" Gitgutter
let g:gitgutter_sign_column_always = 1 
