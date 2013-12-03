" ===============================================
" Vundle - Vim plugin manager
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
