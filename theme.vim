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

function! SetSolalizedTheme()
    autocmd ColorScheme * highlight ColorColumn ctermbg=8 ctermfg=14
    autocmd ColorScheme * highlight SignColumn ctermbg=0 ctermfg=10
    autocmd ColorScheme * highlight TabLineFill ctermfg=241 ctermbg=8
    autocmd ColorScheme * highlight TabLine ctermfg=239 ctermbg=8
    autocmd ColorScheme * highlight TabLineSel ctermfg=0 ctermbg=246
    colorscheme solarized
endfunction

function! SetLuciusTheme()
    autocmd ColorScheme * highlight SignColumn ctermbg=238 ctermfg=10
    autocmd ColorScheme * highlight ColorColumn ctermbg=235 ctermfg=15
    autocmd ColorScheme * highlight TabLineFill ctermbg=234
    autocmd ColorScheme * highlight TabLine ctermfg=241 ctermbg=234
    autocmd ColorScheme * highlight TabLineSel ctermfg=247 ctermbg=236
    colorscheme lucius
endfunction

" Theme stuff
" call SetLuciusTheme()
call SetSolalizedTheme()
nnoremap <leader>1 :call SetSolalizedTheme()<cr>
nnoremap <leader>2 :call SetLuciusTheme()<cr>

" vim indent guides
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=238
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=0
