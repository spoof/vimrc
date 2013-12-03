" ==============
" Theme settings
" ==============

set t_Co=256                " enable 256 colors
set background=dark         " We are using dark background in vim

" lucius theme
"let g:lucius_style = "dark"
"colorscheme lucius

" solarized theme options
let g:solarized_visibility = "low"
let g:solarized_contrast = "low"

autocmd ColorScheme * highlight ColorColumn ctermbg=8 ctermfg=14
autocmd ColorScheme * highlight SignColumn ctermbg=0

colorscheme solarized

" vim indent guides
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=238
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=0
