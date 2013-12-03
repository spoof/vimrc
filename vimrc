" many settings taken from here https://github.com/sontek/dotfiles/

" ===============================================
" Vundle - Vim bundle and is a Vim plugin manager
" ===============================================
"
set nocompatible
filetype off
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'mileszs/ack.vim.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-git.git'
Bundle 'sjl/gundo.vim.git'
Bundle 'reinh/vim-makegreen'
Bundle 'scrooloose/nerdtree.git'
Bundle 'alfredodeza/pytest.vim.git'
Bundle 'fs111/pydoc.vim.git'
Bundle 'ervandew/supertab.git'
Bundle 'tpope/vim-surround.git'
Bundle 'nvie/vim-flake8.git'
Bundle 'Lokaltog/vim-powerline.git'
Bundle 'tpope/vim-repeat.git'
Bundle 'edsono/vim-sessions.git'
Bundle 'sjl/vitality.vim.git'
Bundle 'mitechie/pyflakes-pathogen.git'
Bundle 'mattn/zencoding-vim.git'
Bundle 'mattn/emmet-vim.git'
Bundle 'davidhalter/jedi-vim.git'
Bundle 'rizzatti/funcoo.vim.git'
Bundle 'rizzatti/dash.vim.git'
Bundle 'jonathanfilip/vim-lucius.git'
Bundle 'vim-scripts/YankRing.vim.git'
Bundle 'jmcantrell/vim-virtualenv.git'
Bundle 'benatkin/vim-move-between-tabs.git'
Bundle "pangloss/vim-javascript"
Bundle 'hdima/python-syntax.git'
Bundle 'othree/html5.vim.git'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'jasoncodes/ctrlp-modified.vim'
Bundle 'tpope/vim-abolish'

if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif


" ==============
" Basic settings
" ==============

filetype plugin indent on
""" common settings
set nocompatible            " Don't be compatible with vi
let mapleader=","           " change the leader to be a comma vs slash

set nobackup                " no backup files
set noswapfile              " no swap files
set encoding=utf-8 
set fileencodings=utf8,
set exrc                    " enable per-directory .vimrc files
set secure                  " disable unsafe commands in local .vimrc files

set noerrorbells            " don't bell
set vb t_vb=                " don't blink

syntax on                   " syntax highlighing
filetype on                 " try to detect filetypes
filetype plugin indent on   " enable loading indent file for filetype
set number                  " Display line numbers
set numberwidth=1           " using only 1 column (and 1 space) while possible
set title                   " show title in console title bar
set wildmenu                " Menu completion in command mode on <Tab>
set wildmode=full           " <Tab> cycles between all matching choices.


""" terminal settings
set t_Co=256                " enable 256 colors
set termencoding=utf-8
set ttymouse=xterm2
set mouse=a                 " enable mouse


""" color scheme settings
set background=dark         " We are using dark background in vim

" lucius theme
let g:lucius_style = "dark"
colorscheme lucius

" solarized theme options
"let g:solarized_termcolors = 256
let g:solarized_visibility = "low"
let g:solarized_contrast = "low"
colorscheme solarized

""" Moving Around/Editing
set cursorline              " have a line indicate the cursor location
set ruler                   " show the cursor position all the time
set nostartofline           " avoid moving cursor to BOL when jumping around
set virtualedit=block       " let cursor move past the last char in <C-v> mode
set scrolloff=3             " keep 3 context lines above and below the cursor
set backspace=2             " allow backspacing over autoindent, EOL, and BOL
set showmatch               " briefly jump to a paren once it's balanced
set nowrap                  " don't wrap text
set linebreak               " don't wrap textin the middle of a word
set showbreak=↪             " if we break show this sign
set autoindent              " always set autoindenting on
set smartindent             " use smart indent if there is no indent file
set tabstop=4               " <tab> inserts 4 spaces 
set shiftwidth=4            " but an indent level is 2 spaces wide.
set softtabstop=4           " <BS> over an autoindent deletes both spaces.
set expandtab               " use spaces, not tabs, for autoindent/tab key.
set shiftround              " rounds indent to a multiple of shiftwidth
set matchpairs+=<:>         " show matching <> (html mainly) as well
set foldmethod=indent       " allow us to fold on indents
set foldlevel=99            " don't fold by default
set foldcolumn=1            " show folding
set mousehide               " hide coursor on text typing


""" Reading/Writing
set noautowrite             " Never write a file unless I request it.
set noautowriteall          " NEVER.
set noautoread              " Don't automatically re-read changed files.
set modeline                " Allow vim options to be embedded in files;
set modelines=5             " they must be within the first or last 5 lines.
set ffs=unix,dos,mac        " Try recognizing dos, unix, and mac line endings.


""" Searching and Patterns
set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set smarttab                " Handle tabs more intelligently 
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex


""" Messages, Info, Status
set ls=2                    " allways show status line
set confirm                 " Y-N-C prompt if closing with unsaved changes.
set showcmd                 " show incomplete normal mode commands as I type.
set report=0                " : commands always print changed line count.
set shortmess+=a            " use [+]/[RO]/[w] for modified/readonly/written.
set laststatus=2            " always show statusline, even if only 1 window.
set statusline=[%l,%v\ %P%M]\ %f\ %r%h%w\ (%{&ff})\ %{fugitive#statusline()}
set showtabline=2           " don't show any signs on the tabline

""" Ignore these files when completing
set wildignore=*.o,.git,*.swp,*.swo,*~,*.pyc,build,*.egg-info/*,dist,deb_dist,pyshared
set wildignore+=eggs/**

" displays tabs with :set list & displays when a line runs off-screen
set listchars=tab:>-,eol:$,trail:-,precedes:<,extends:>

""" Insert completion
" don't select first item, follow typing in autocomplete
set completeopt=menuone,longest,preview
set pumheight=6             " Keep a small completion window

""" key bindings
" don't let us be lazy, no arrow keys in the command mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" open/close the quickfix window
nmap <leader>c :copen<CR>
nmap <leader>cc :cclose<CR>

" easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Close window
map <c-c> <c-w>c

" Reload Vimrc
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

" save fast
nmap <leader>s :w<cr>
" for when we forget to use sudo to open/edit a file
cmap w!! w !sudo tee % >/dev/null

" hide matches on <leader>space and by enter
nnoremap <leader><space> :nohlsearch<cr>
nnoremap <CR> :noh<CR><CR>
" Remove trailing whitespace on <leader>S
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

" Paste from clipboard
map <leader>p "+p

" current line movement
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
inoremap <leader>j <Esc>:m .+1<CR>==gi
inoremap <leader>k <Esc>:m .-2<CR>==gi
vnoremap <leader>j :m '>+1<CR>gv=gv
vnoremap <leader>k :m '<-2<CR>gv=gv

" formatting
map Q gq

" key mapping for tab navigation
nmap <C-n> gt
nmap <C-p> gT

" set filetype
map <Leader>fp <ESC>:set filetype=python<CR>

" tabs
:map tn :tabnew<CR>
:map td :tabclose<CR>

" don't outdent hashes
inoremap # X<BS>#


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

" ================
" Python settings
" ================

" python.vim
let python_highlight_all = 1

" pep8
autocmd FileType python setlocal colorcolumn=81
" cut spaces from line end
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

" virtualenv
let g:virtualenv_auto_activate = 1
let g:virtualenv_stl_format = '(%n)'

" flake
autocmd FileType python map <buffer> <leader>8 :call Flake8()<CR>
au BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

" jedi settings
let g:jedi#auto_initialization = 1
let g:jedi#completions_enable = 1
autocmd FileType python setlocal completeopt-=preview
let g:jedi#use_splits_not_buffers = "left"
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


" ===========================================================
" Other filetype specific changes
" ============================================================
autocmd bufnewfile,bufread *.mako,*.mak,*.jinja2 setlocal ft=html
autocmd filetype html,xhtml,xml,css setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

autocmd FileType gitcommit setlocal spell
