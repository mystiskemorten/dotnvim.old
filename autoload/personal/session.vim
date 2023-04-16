function! personal#session#save() abort " {{{1
    call mkdir(expand('%:p:h') . '/.vim', 'p')
    execute 'mksession! %:p:h/.vim/%:t_session.vim'
endfunction

" }}}1

