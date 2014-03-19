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


autocmd Colorscheme * highlight TabLineFill ctermfg=241 ctermbg=8
autocmd Colorscheme * highlight TabLine ctermfg=241 ctermbg=8
autocmd Colorscheme * highlight TabLineSel ctermfg=242 ctermbg=249

colorscheme solarized
" vim indent guides
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=238
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=0

" always show sign column
autocmd FileType * sign define dummy
autocmd FileType * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

highlight WhitespaceEOL ctermbg=Red guibg=Redon
match WhitespaceEOL /\s\+$/
