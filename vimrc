" many settings taken from here https://github.com/sontek/dotfiles/

source ~/.vim/vundle.vim

source ~/.vim/base.vim
source ~/.vim/theme.vim
source ~/.vim/mappings.vim
source ~/.vim/plugins.vim
source ~/.vim/python.vim
source ~/.vim/languages.vim

if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
