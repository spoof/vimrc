" many settings taken from here https://github.com/sontek/dotfiles/
set nocompatible              " Don't be compatible with vi
let mapleader=","             " change the leader to be a comma vs slash

command! W :w
fu! SplitScroll()
    :wincmd v
    :wincmd w
    execute "normal! \<C-d>"
    :set scrollbind
    :wincmd w
    :set scrollbind
endfu

nmap <leader>sb :call SplitScroll()<CR>

" sudo write this
cmap W! w !sudo tee % >/dev/null

" Run pep8
let g:pep8_map='<leader>8'

" run py.test's
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
nmap <silent><Leader>tc <Esc>:Pytest class<CR>
nmap <silent><Leader>tm <Esc>:Pytest method<CR>
nmap <silent><Leader>tn <Esc>:Pytest next<CR>
nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
nmap <silent><Leader>te <Esc>:Pytest error<CR>

" Reload Vimrc
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" open/close the quickfix window
nmap <leader>c :copen<CR>
nmap <leader>cc :cclose<CR>

" for when we forget to use sudo to open/edit a file
cmap w!! w !sudo tee % >/dev/null

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" and lets make these all work in insert mode too ( <C-O> makes next cmd
"  happen as if in command mode )
"imap <C-W> <C-O><C-W>

" Open NerdTree
map <leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:NERDTreeWinSize = 17 
let NERDTreeIgnore = ['\.pyc$']

" Run command-t file search
map <leader>f :CommandT<CR>
" Ack searching
nmap <leader>a <Esc>:Ack!

" Load the Gundo window
map <leader>g :GundoToggle<CR>

" Jump to the definition of whatever the cursor is on
map <leader>j :RopeGotoDefinition<CR>

" Rename whatever the cursor is on (including references to it)
map <leader>r :RopeRename<CR>

" ==========================================================
" Pathogen - Allows us to organize our vim plugins
" ==========================================================
" Load pathogen with docs for all plugins
filetype off
call pathogen#incubate()
call pathogen#helptags()

" ==========================================================
" Basic Settings
" ==========================================================
syntax on                     " syntax highlighing
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype
set number                    " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
set background=dark           " We are using dark background in vim
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.

" don't bell or blink
set noerrorbells
set vb t_vb=

" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

set grepprg=ack         " replace the default grep program with ack

" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

" Disable the colorcolumn when switching modes.  Make sure this is the
" first autocmd for the filetype here
"autocmd FileType * setlocal colorcolumn=0

""" Insert completion
" don't select first item, follow typing in autocomplete
set completeopt=menu,longest,preview
set pumheight=6             " Keep a small completion window


""" Moving Around/Editing
set cursorline              " have a line indicate the cursor location
set ruler                   " show the cursor position all the time
set nostartofline           " Avoid moving cursor to BOL when jumping around
set virtualedit=block       " Let cursor move past the last char in <C-v> mode
set scrolloff=3             " Keep 3 context lines above and below the cursor
set backspace=2             " Allow backspacing over autoindent, EOL, and BOL
set showmatch               " Briefly jump to a paren once it's balanced
set nowrap                  " don't wrap text
set linebreak               " don't wrap textin the middle of a word
set autoindent              " always set autoindenting on
set smartindent             " use smart indent if there is no indent file
set tabstop=4               " <tab> inserts 4 spaces 
set shiftwidth=4            " but an indent level is 2 spaces wide.
set softtabstop=4           " <BS> over an autoindent deletes both spaces.
set expandtab               " Use spaces, not tabs, for autoindent/tab key.
set shiftround              " rounds indent to a multiple of shiftwidth
set matchpairs+=<:>         " show matching <> (html mainly) as well
set foldmethod=indent       " allow us to fold on indents
set foldlevel=99            " don't fold by default
"set copyindent

" don't outdent hashes
inoremap # #

" close preview window automatically when we move around
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"""" Reading/Writing
set noautowrite             " Never write a file unless I request it.
set noautowriteall          " NEVER.
set noautoread              " Don't automatically re-read changed files.
set modeline                " Allow vim options to be embedded in files;
set modelines=5             " they must be within the first or last 5 lines.
set ffs=unix,dos,mac        " Try recognizing dos, unix, and mac line endings.

"""" Messages, Info, Status
set ls=2                    " allways show status line
set confirm                 " Y-N-C prompt if closing with unsaved changes.
set showcmd                 " Show incomplete normal mode commands as I type.
set report=0                " : commands always print changed line count.
set shortmess+=a            " Use [+]/[RO]/[w] for modified/readonly/written.
set laststatus=2            " Always show statusline, even if only 1 window.
set statusline=[%l,%v\ %P%M]\ %f\ %r%h%w\ (%{&ff})\ %{fugitive#statusline()}

" displays tabs with :set list & displays when a line runs off-screen
set listchars=tab:>-,eol:$,trail:-,precedes:<,extends:>
"set list

" Searching and Patterns
set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set smarttab                " Handle tabs more intelligently 
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex


" hide matches on <leader>space
nnoremap <leader><space> :nohlsearch<cr>

" Remove trailing whitespace on <leader>S
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

" ===========================================================
" FileType specific changes
" ============================================================
" Mako/HTML
autocmd BufNewFile,BufRead *.mako,*.mak,*.jinja2 setlocal ft=html
autocmd FileType html,xhtml,xml,css setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" Python
"au BufRead *.py compiler nose
au FileType python set omnifunc=pythoncomplete#Complete
au FileType python setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
au FileType coffee setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
au BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
autocmd FileType python setlocal textwidth=80
autocmd FileType python setlocal colorcolumn=80
"autocmd FileType python setlocal textwidth=100
"autocmd FileType python setlocal colorcolumn=100
" Don't let pyflakes use the quickfix window
let g:pyflakes_use_quickfix = 0
"Перед сохранением вырезаем пробелы на концах (только в .py файлах)
"В .py файлах включаем умные отступы после ключевых слов
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
"autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class


" Add the virtualenv's site-packages to vim path
if has('python')
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
endif

" Load up virtualenv's vimrc if it exists
if filereadable($VIRTUAL_ENV . '/.vimrc')
    source $VIRTUAL_ENV/.vimrc
endif

"Подсвечиваем все что можно подсвечивать
let python_highlight_all = 1
"Включаем 256 цветов в терминале, мы ведь работаем из иксов?
"Нужно во многих терминалах, например в gnome-terminal
set t_Co=256

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" Копи/паст по Ctrl+C/Ctrl+V
" vmap <C-C> "+yi
"imap <C-V> "+gPi

colorscheme lucius
syntax on
set nu
set mousehide "Спрятать курсор мыши когда набираем текст
set mouse=a "Включить поддержку мыши
set ttymouse=xterm2
set termencoding=utf-8
"Удобное поведение backspace
"set backspace=indent,eol,start whichwrap+=<,>,[,]
"Вырубаем черточки на табах
set showtabline=2
"Колоночка, чтобы показывать плюсики для скрытия блоков кода:
set foldcolumn=1

"Переносим на другую строчку, разрываем строки
"set wrap
"set linebreak

"Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 
set fileencodings=utf8,

nnoremap <CR> :noh<CR><CR>
augroup BufNewFileFromTemplate
au!
autocmd BufNewFile * silent! 0r $HOME/.vim/templates/%:e.tpl
autocmd BufNewFile * normal! G"_dd1G
autocmd BufNewFile * silent! match Todo /TODO/
augroup BufNewFileFromTemplate

"pylint
"au FileType python set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
"au FileType python set efm=%A%f:%l:\ [%t%.%#]\ %m,%Z%p^^,%-C%.%#
"let g:pylint_onwrite = 0
"set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
"set errorformat=%f:%l:\ %m
"vim-sessions
let g:sessions_project_path = "$HOME/vim/projects/"
autocmd FileType python map <buffer> <leader>8 :call Flake8()<CR>
set exrc            " enable per-directory .vimrc files
set secure          " disable unsafe commands in local .vimrc files
