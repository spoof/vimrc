" ===============================
" Other filetype specific changes
" ===============================

autocmd bufnewfile,bufread *.mako,*.mak,*.jinja2 setlocal ft=html
autocmd filetype html,xhtml,xml,css setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

autocmd FileType gitcommit setlocal spell