" ===============================
" Other filetype specific changes
" ===============================

autocmd bufnewfile,bufread *.mako,*.mak,*.jinja2 setlocal ft=html
autocmd bufnewfile,bufread *.html setlocal ft=html.tornadotmpl
autocmd filetype html,xhtml,xml,css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd filetype js,json setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" Git
autocmd FileType gitcommit setlocal spell
autocmd FileType gitcommit setlocal textwidth=72
autocmd FileType gitcommit setlocal colorcolumn=72
