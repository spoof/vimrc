" ===============================================
" Vundle - Vim plugin manager
" ===============================================
"
set nocompatible
filetype off
let iCanHazVundle=1
if !filereadable(expand('~/.vim/bundle/vundle/README.md'))
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

" themes and interface
Bundle 'Lokaltog/vim-powerline.git'
Bundle 'jonathanfilip/vim-lucius.git'
Bundle 'altercation/vim-colors-solarized'

" useful plugins
Bundle 'scrooloose/nerdtree.git'
Bundle 'sjl/gundo.vim.git'
Bundle 'tpope/vim-repeat.git'
Bundle 'tpope/vim-surround.git'
Bundle 'vim-scripts/YankRing.vim.git'
Bundle 'benatkin/vim-move-between-tabs.git'
Bundle 'edsono/vim-sessions.git'
Bundle 'sjl/vitality.vim.git'
Bundle 'kien/ctrlp.vim'
Bundle 'jasoncodes/ctrlp-modified.vim'
Bundle 'tpope/vim-abolish'
Bundle 'rizzatti/funcoo.vim.git'
Bundle 'rizzatti/dash.vim.git'
Bundle 'mileszs/ack.vim.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-git.git'
Bundle 'reinh/vim-makegreen'
Bundle 'ervandew/supertab.git'

" python
Bundle 'hdima/python-syntax.git'
Bundle 'fs111/pydoc.vim.git'
Bundle 'alfredodeza/pytest.vim.git'
Bundle 'nvie/vim-flake8.git'
Bundle 'mitechie/pyflakes-pathogen.git'
Bundle 'davidhalter/jedi-vim.git'
Bundle 'jmcantrell/vim-virtualenv.git'

" other languages
Bundle "pangloss/vim-javascript"
Bundle 'othree/html5.vim.git'
Bundle 'mattn/emmet-vim.git'

if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif
