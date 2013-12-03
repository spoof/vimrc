" ================
" Plugins settings
" ================

""" NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeWinSize =27 
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '.DS_Store']
map <leader>m :NERDTreeToggle<CR>
" change dir
map <leader>p :NERDTree %<CR>


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
map <leader>f :CtrlP<CR>
map <leader>b :CtrlPBuffer<CR>
map <Leader>cm :CtrlPModified<CR>
map <Leader>cM :CtrlPBranch<CR>
